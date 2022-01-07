
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tuplen ;
struct TYPE_7__ {int myfile; scalar_t__ backward; } ;
typedef TYPE_1__ Tuplestorestate ;
struct TYPE_8__ {int t_len; } ;
typedef TYPE_2__* MinimalTuple ;


 int BufFileWrite (int ,void*,int) ;
 int ERROR ;
 int FREEMEM (TYPE_1__*,int ) ;
 int GetMemoryChunkSpace (TYPE_2__*) ;
 int MINIMAL_TUPLE_DATA_OFFSET ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;
 int heap_free_minimal_tuple (TYPE_2__*) ;

__attribute__((used)) static void
writetup_heap(Tuplestorestate *state, void *tup)
{
 MinimalTuple tuple = (MinimalTuple) tup;


 char *tupbody = (char *) tuple + MINIMAL_TUPLE_DATA_OFFSET;
 unsigned int tupbodylen = tuple->t_len - MINIMAL_TUPLE_DATA_OFFSET;


 unsigned int tuplen = tupbodylen + sizeof(int);

 if (BufFileWrite(state->myfile, (void *) &tuplen,
      sizeof(tuplen)) != sizeof(tuplen))
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not write to tuplestore temporary file: %m")));
 if (BufFileWrite(state->myfile, (void *) tupbody,
      tupbodylen) != (size_t) tupbodylen)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not write to tuplestore temporary file: %m")));
 if (state->backward)
  if (BufFileWrite(state->myfile, (void *) &tuplen,
       sizeof(tuplen)) != sizeof(tuplen))
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not write to tuplestore temporary file: %m")));

 FREEMEM(state, GetMemoryChunkSpace(tuple));
 heap_free_minimal_tuple(tuple);
}
