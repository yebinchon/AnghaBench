
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int oprkind; int oprnamespace; int oprname; } ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int * Operator ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_operator ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 char* NameStr (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int *) ;
 int * SearchSysCache1 (int ,int ) ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int elog (int ,char*,scalar_t__) ;
 char* get_namespace_name (int ) ;
 int initStringInfo (TYPE_1__*) ;
 int * left_oper (int *,int ,scalar_t__,int,int) ;
 int list_make1 (int ) ;
 int makeString (char*) ;
 int * oper (int *,int ,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ oprid (int *) ;
 int quote_identifier (char*) ;
 int * right_oper (int *,int ,scalar_t__,int,int) ;

__attribute__((used)) static char *
generate_operator_name(Oid operid, Oid arg1, Oid arg2)
{
 StringInfoData buf;
 HeapTuple opertup;
 Form_pg_operator operform;
 char *oprname;
 char *nspname;
 Operator p_result;

 initStringInfo(&buf);

 opertup = SearchSysCache1(OPEROID, ObjectIdGetDatum(operid));
 if (!HeapTupleIsValid(opertup))
  elog(ERROR, "cache lookup failed for operator %u", operid);
 operform = (Form_pg_operator) GETSTRUCT(opertup);
 oprname = NameStr(operform->oprname);






 switch (operform->oprkind)
 {
  case 'b':
   p_result = oper(((void*)0), list_make1(makeString(oprname)), arg1, arg2,
       1, -1);
   break;
  case 'l':
   p_result = left_oper(((void*)0), list_make1(makeString(oprname)), arg2,
         1, -1);
   break;
  case 'r':
   p_result = right_oper(((void*)0), list_make1(makeString(oprname)), arg1,
          1, -1);
   break;
  default:
   elog(ERROR, "unrecognized oprkind: %d", operform->oprkind);
   p_result = ((void*)0);
   break;
 }

 if (p_result != ((void*)0) && oprid(p_result) == operid)
  nspname = ((void*)0);
 else
 {
  nspname = get_namespace_name(operform->oprnamespace);
  appendStringInfo(&buf, "OPERATOR(%s.", quote_identifier(nspname));
 }

 appendStringInfoString(&buf, oprname);

 if (nspname)
  appendStringInfoChar(&buf, ')');

 if (p_result != ((void*)0))
  ReleaseSysCache(p_result);

 ReleaseSysCache(opertup);

 return buf.data;
}
