
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_6__ {int tupdesc; int * vals; } ;
struct TYPE_5__ {scalar_t__ len; char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int * SPIPlanPtr ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;


 int CStringGetDatum (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 int NAMEOID ;
 int OIDOID ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ SPI_OK_CONNECT ;
 scalar_t__ SPI_OK_FINISH ;
 int SPI_OK_SELECT ;
 scalar_t__ SPI_connect () ;
 int SPI_execute_plan (int *,int *,char*,int,int ) ;
 scalar_t__ SPI_finish () ;
 int SPI_keepplan (int *) ;
 int * SPI_prepare (int ,int,int *) ;
 int SPI_processed ;
 TYPE_4__* SPI_tuptable ;
 int ViewSelectRuleName ;
 int elog (int ,char*,...) ;
 int initStringInfo (TYPE_1__*) ;
 int make_viewdef (TYPE_1__*,int ,int ,int,int) ;
 int namein ;
 int * plan_getviewrule ;
 int query_getviewrule ;

__attribute__((used)) static char *
pg_get_viewdef_worker(Oid viewoid, int prettyFlags, int wrapColumn)
{
 Datum args[2];
 char nulls[2];
 int spirc;
 HeapTuple ruletup;
 TupleDesc rulettc;
 StringInfoData buf;




 initStringInfo(&buf);




 if (SPI_connect() != SPI_OK_CONNECT)
  elog(ERROR, "SPI_connect failed");






 if (plan_getviewrule == ((void*)0))
 {
  Oid argtypes[2];
  SPIPlanPtr plan;

  argtypes[0] = OIDOID;
  argtypes[1] = NAMEOID;
  plan = SPI_prepare(query_getviewrule, 2, argtypes);
  if (plan == ((void*)0))
   elog(ERROR, "SPI_prepare failed for \"%s\"", query_getviewrule);
  SPI_keepplan(plan);
  plan_getviewrule = plan;
 }




 args[0] = ObjectIdGetDatum(viewoid);
 args[1] = DirectFunctionCall1(namein, CStringGetDatum(ViewSelectRuleName));
 nulls[0] = ' ';
 nulls[1] = ' ';
 spirc = SPI_execute_plan(plan_getviewrule, args, nulls, 1, 0);
 if (spirc != SPI_OK_SELECT)
  elog(ERROR, "failed to get pg_rewrite tuple for view %u", viewoid);
 if (SPI_processed != 1)
 {




 }
 else
 {



  ruletup = SPI_tuptable->vals[0];
  rulettc = SPI_tuptable->tupdesc;
  make_viewdef(&buf, ruletup, rulettc, prettyFlags, wrapColumn);
 }




 if (SPI_finish() != SPI_OK_FINISH)
  elog(ERROR, "SPI_finish failed");

 if (buf.len == 0)
  return ((void*)0);

 return buf.data;
}
