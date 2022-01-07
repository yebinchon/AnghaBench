
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
typedef int Tcl_Obj ;
struct TYPE_8__ {int atttypid; int attname; scalar_t__ attgenerated; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;


 char* NameStr (int ) ;
 char* OidOutputFunctionCall (int ,int ) ;
 int Tcl_ListObjAppendElement (int *,int *,int ) ;
 int * Tcl_NewObj () ;
 int Tcl_NewStringObj (int ,int) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int UTF_BEGIN ;
 int UTF_E2U (char*) ;
 int UTF_END ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int heap_getattr (int ,int,TYPE_1__*,int*) ;
 int pfree (char*) ;

__attribute__((used)) static Tcl_Obj *
pltcl_build_tuple_argument(HeapTuple tuple, TupleDesc tupdesc, bool include_generated)
{
 Tcl_Obj *retobj = Tcl_NewObj();
 int i;
 char *outputstr;
 Datum attr;
 bool isnull;
 char *attname;
 Oid typoutput;
 bool typisvarlena;

 for (i = 0; i < tupdesc->natts; i++)
 {
  Form_pg_attribute att = TupleDescAttr(tupdesc, i);


  if (att->attisdropped)
   continue;

  if (att->attgenerated)
  {

   if (!include_generated)
    continue;
  }




  attname = NameStr(att->attname);




  attr = heap_getattr(tuple, i + 1, tupdesc, &isnull);
  if (!isnull)
  {
   getTypeOutputInfo(att->atttypid,
         &typoutput, &typisvarlena);
   outputstr = OidOutputFunctionCall(typoutput, attr);
   UTF_BEGIN;
   Tcl_ListObjAppendElement(((void*)0), retobj,
          Tcl_NewStringObj(UTF_E2U(attname), -1));
   UTF_END;
   UTF_BEGIN;
   Tcl_ListObjAppendElement(((void*)0), retobj,
          Tcl_NewStringObj(UTF_E2U(outputstr), -1));
   UTF_END;
   pfree(outputstr);
  }
 }

 return retobj;
}
