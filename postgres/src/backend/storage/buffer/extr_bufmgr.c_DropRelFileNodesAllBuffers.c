
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {int rnode; } ;
struct TYPE_12__ {TYPE_1__ tag; } ;
struct TYPE_11__ {scalar_t__ backend; int node; } ;
typedef TYPE_2__ RelFileNodeBackend ;
typedef int RelFileNode ;
typedef TYPE_3__ BufferDesc ;


 int DROP_RELS_BSEARCH_THRESHOLD ;
 int DropRelFileNodeAllLocalBuffers (int ) ;
 TYPE_3__* GetBufferDescriptor (int) ;
 int InvalidateBuffer (TYPE_3__*) ;
 int LockBufHdr (TYPE_3__*) ;
 scalar_t__ MyBackendId ;
 int NBuffers ;
 scalar_t__ RelFileNodeBackendIsTemp (TYPE_2__) ;
 scalar_t__ RelFileNodeEquals (int ,int ) ;
 int UnlockBufHdr (TYPE_3__*,int ) ;
 int * bsearch (void const*,int *,int,int,int ) ;
 int * palloc (int) ;
 int pfree (int *) ;
 int pg_qsort (int *,int,int,int ) ;
 int rnode_comparator ;

void
DropRelFileNodesAllBuffers(RelFileNodeBackend *rnodes, int nnodes)
{
 int i,
    n = 0;
 RelFileNode *nodes;
 bool use_bsearch;

 if (nnodes == 0)
  return;

 nodes = palloc(sizeof(RelFileNode) * nnodes);


 for (i = 0; i < nnodes; i++)
 {
  if (RelFileNodeBackendIsTemp(rnodes[i]))
  {
   if (rnodes[i].backend == MyBackendId)
    DropRelFileNodeAllLocalBuffers(rnodes[i].node);
  }
  else
   nodes[n++] = rnodes[i].node;
 }





 if (n == 0)
 {
  pfree(nodes);
  return;
 }







 use_bsearch = n > DROP_RELS_BSEARCH_THRESHOLD;


 if (use_bsearch)
  pg_qsort(nodes, n, sizeof(RelFileNode), rnode_comparator);

 for (i = 0; i < NBuffers; i++)
 {
  RelFileNode *rnode = ((void*)0);
  BufferDesc *bufHdr = GetBufferDescriptor(i);
  uint32 buf_state;






  if (!use_bsearch)
  {
   int j;

   for (j = 0; j < n; j++)
   {
    if (RelFileNodeEquals(bufHdr->tag.rnode, nodes[j]))
    {
     rnode = &nodes[j];
     break;
    }
   }
  }
  else
  {
   rnode = bsearch((const void *) &(bufHdr->tag.rnode),
       nodes, n, sizeof(RelFileNode),
       rnode_comparator);
  }


  if (rnode == ((void*)0))
   continue;

  buf_state = LockBufHdr(bufHdr);
  if (RelFileNodeEquals(bufHdr->tag.rnode, (*rnode)))
   InvalidateBuffer(bufHdr);
  else
   UnlockBufHdr(bufHdr, buf_state);
 }

 pfree(nodes);
}
