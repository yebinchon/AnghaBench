
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oprcode; int oid; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_operator ;


 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int OPERNAMENSP ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (char const*) ;
 int RegProcedureIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache4 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static Oid
OperatorGet(const char *operatorName,
   Oid operatorNamespace,
   Oid leftObjectId,
   Oid rightObjectId,
   bool *defined)
{
 HeapTuple tup;
 Oid operatorObjectId;

 tup = SearchSysCache4(OPERNAMENSP,
        PointerGetDatum(operatorName),
        ObjectIdGetDatum(leftObjectId),
        ObjectIdGetDatum(rightObjectId),
        ObjectIdGetDatum(operatorNamespace));
 if (HeapTupleIsValid(tup))
 {
  Form_pg_operator oprform = (Form_pg_operator) GETSTRUCT(tup);

  operatorObjectId = oprform->oid;
  *defined = RegProcedureIsValid(oprform->oprcode);
  ReleaseSysCache(tup);
 }
 else
 {
  operatorObjectId = InvalidOid;
  *defined = 0;
 }

 return operatorObjectId;
}
