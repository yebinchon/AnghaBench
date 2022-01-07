
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * RefetchForeignRow; } ;
struct TYPE_9__ {TYPE_1__* rd_rel; } ;
struct TYPE_8__ {int relkind; } ;
typedef int RowMarkType ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ FdwRoutine ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 TYPE_3__* GetFdwRoutineForRelation (TYPE_2__*,int) ;







 int ROW_MARK_REFERENCE ;
 int RelationGetRelationName (TYPE_2__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
CheckValidRowMarkRel(Relation rel, RowMarkType markType)
{
 FdwRoutine *fdwroutine;

 switch (rel->rd_rel->relkind)
 {
  case 131:
  case 132:

   break;
  case 130:

   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot lock rows in sequence \"%s\"",
       RelationGetRelationName(rel))));
   break;
  case 129:

   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot lock rows in TOAST relation \"%s\"",
       RelationGetRelationName(rel))));
   break;
  case 128:

   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot lock rows in view \"%s\"",
       RelationGetRelationName(rel))));
   break;
  case 133:

   if (markType != ROW_MARK_REFERENCE)
    ereport(ERROR,
      (errcode(ERRCODE_WRONG_OBJECT_TYPE),
       errmsg("cannot lock rows in materialized view \"%s\"",
        RelationGetRelationName(rel))));
   break;
  case 134:

   fdwroutine = GetFdwRoutineForRelation(rel, 0);
   if (fdwroutine->RefetchForeignRow == ((void*)0))
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("cannot lock rows in foreign table \"%s\"",
        RelationGetRelationName(rel))));
   break;
  default:
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("cannot lock rows in relation \"%s\"",
       RelationGetRelationName(rel))));
   break;
 }
}
