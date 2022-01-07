
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_10__ {scalar_t__ filenode; int last_valid; scalar_t__ last; scalar_t__ cached; int lxid; } ;
struct TYPE_9__ {scalar_t__ relkind; scalar_t__ relfilenode; } ;
typedef TYPE_2__* SeqTable ;
typedef TYPE_3__* Relation ;
typedef int Oid ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int HASH_ENTER ;
 int InvalidLocalTransactionId ;
 scalar_t__ InvalidOid ;
 scalar_t__ RELKIND_SEQUENCE ;
 int RelationGetRelationName (TYPE_3__*) ;
 int create_seq_hashtable () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ hash_search (int *,int *,int ,int*) ;
 TYPE_3__* lock_and_open_sequence (TYPE_2__*) ;
 int * seqhashtab ;

__attribute__((used)) static void
init_sequence(Oid relid, SeqTable *p_elm, Relation *p_rel)
{
 SeqTable elm;
 Relation seqrel;
 bool found;


 if (seqhashtab == ((void*)0))
  create_seq_hashtable();

 elm = (SeqTable) hash_search(seqhashtab, &relid, HASH_ENTER, &found);
 if (!found)
 {

  elm->filenode = InvalidOid;
  elm->lxid = InvalidLocalTransactionId;
  elm->last_valid = 0;
  elm->last = elm->cached = 0;
 }




 seqrel = lock_and_open_sequence(elm);

 if (seqrel->rd_rel->relkind != RELKIND_SEQUENCE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a sequence",
      RelationGetRelationName(seqrel))));






 if (seqrel->rd_rel->relfilenode != elm->filenode)
 {
  elm->filenode = seqrel->rd_rel->relfilenode;
  elm->cached = elm->last;
 }


 *p_elm = elm;
 *p_rel = seqrel;
}
