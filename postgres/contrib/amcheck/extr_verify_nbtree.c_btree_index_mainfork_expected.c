
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_rel; } ;
struct TYPE_5__ {scalar_t__ relpersistence; } ;
typedef TYPE_2__* Relation ;


 int ERRCODE_READ_ONLY_SQL_TRANSACTION ;
 int NOTICE ;
 scalar_t__ RELPERSISTENCE_UNLOGGED ;
 int RecoveryInProgress () ;
 int RelationGetRelationName (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static inline bool
btree_index_mainfork_expected(Relation rel)
{
 if (rel->rd_rel->relpersistence != RELPERSISTENCE_UNLOGGED ||
  !RecoveryInProgress())
  return 1;

 ereport(NOTICE,
   (errcode(ERRCODE_READ_ONLY_SQL_TRANSACTION),
    errmsg("cannot verify unlogged index \"%s\" during recovery, skipping",
     RelationGetRelationName(rel))));

 return 0;
}
