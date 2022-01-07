
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int prorettype; scalar_t__ proretset; } ;
struct TYPE_8__ {int len; int data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int StringInfo ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;


 int GETSTRUCT (int ) ;
 int appendBinaryStringInfo (int ,int ,int ) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 char* format_type_be (int ) ;
 int initStringInfo (TYPE_1__*) ;
 int print_function_arguments (TYPE_1__*,int ,int,int) ;
 int resetStringInfo (TYPE_1__*) ;

__attribute__((used)) static void
print_function_rettype(StringInfo buf, HeapTuple proctup)
{
 Form_pg_proc proc = (Form_pg_proc) GETSTRUCT(proctup);
 int ntabargs = 0;
 StringInfoData rbuf;

 initStringInfo(&rbuf);

 if (proc->proretset)
 {

  appendStringInfoString(&rbuf, "TABLE(");
  ntabargs = print_function_arguments(&rbuf, proctup, 1, 0);
  if (ntabargs > 0)
   appendStringInfoChar(&rbuf, ')');
  else
   resetStringInfo(&rbuf);
 }

 if (ntabargs == 0)
 {

  if (proc->proretset)
   appendStringInfoString(&rbuf, "SETOF ");
  appendStringInfoString(&rbuf, format_type_be(proc->prorettype));
 }

 appendBinaryStringInfo(buf, rbuf.data, rbuf.len);
}
