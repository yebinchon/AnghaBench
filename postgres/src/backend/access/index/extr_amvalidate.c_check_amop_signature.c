
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ oprresult; char oprkind; scalar_t__ oprleft; scalar_t__ oprright; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_operator ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;

bool
check_amop_signature(Oid opno, Oid restype, Oid lefttype, Oid righttype)
{
 bool result = 1;
 HeapTuple tp;
 Form_pg_operator opform;

 tp = SearchSysCache1(OPEROID, ObjectIdGetDatum(opno));
 if (!HeapTupleIsValid(tp))
  elog(ERROR, "cache lookup failed for operator %u", opno);
 opform = (Form_pg_operator) GETSTRUCT(tp);

 if (opform->oprresult != restype || opform->oprkind != 'b' ||
  opform->oprleft != lefttype || opform->oprright != righttype)
  result = 0;

 ReleaseSysCache(tp);
 return result;
}
