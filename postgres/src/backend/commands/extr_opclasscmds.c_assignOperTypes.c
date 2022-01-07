
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char oprkind; scalar_t__ oprresult; int oprright; int oprleft; } ;
struct TYPE_7__ {int amcanorderbyop; } ;
struct TYPE_6__ {int righttype; int lefttype; int sortfamily; int object; } ;
typedef int Operator ;
typedef TYPE_1__ OpFamilyMember ;
typedef int Oid ;
typedef TYPE_2__ IndexAmRoutine ;
typedef TYPE_3__* Form_pg_operator ;


 scalar_t__ BOOLOID ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 TYPE_2__* GetIndexAmRoutineByAmId (int ,int) ;
 int HeapTupleIsValid (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_am_name (int ) ;

__attribute__((used)) static void
assignOperTypes(OpFamilyMember *member, Oid amoid, Oid typeoid)
{
 Operator optup;
 Form_pg_operator opform;


 optup = SearchSysCache1(OPEROID, ObjectIdGetDatum(member->object));
 if (!HeapTupleIsValid(optup))
  elog(ERROR, "cache lookup failed for operator %u", member->object);
 opform = (Form_pg_operator) GETSTRUCT(optup);




 if (opform->oprkind != 'b')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("index operators must be binary")));

 if (OidIsValid(member->sortfamily))
 {
  IndexAmRoutine *amroutine = GetIndexAmRoutineByAmId(amoid, 0);

  if (!amroutine->amcanorderbyop)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("access method \"%s\" does not support ordering operators",
       get_am_name(amoid))));
 }
 else
 {



  if (opform->oprresult != BOOLOID)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("index search operators must return boolean")));
 }




 if (!OidIsValid(member->lefttype))
  member->lefttype = opform->oprleft;
 if (!OidIsValid(member->righttype))
  member->righttype = opform->oprright;

 ReleaseSysCache(optup);
}
