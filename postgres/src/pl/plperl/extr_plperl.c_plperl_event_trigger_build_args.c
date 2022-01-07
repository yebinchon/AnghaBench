
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tag; int event; } ;
struct TYPE_4__ {scalar_t__ context; } ;
typedef int SV ;
typedef int HV ;
typedef TYPE_1__* FunctionCallInfo ;
typedef TYPE_2__ EventTriggerData ;


 int cstr2sv (int ) ;
 int dTHX ;
 int hv_store_string (int *,char*,int ) ;
 int * newHV () ;
 int * newRV_noinc (int *) ;

__attribute__((used)) static SV *
plperl_event_trigger_build_args(FunctionCallInfo fcinfo)
{
 dTHX;
 EventTriggerData *tdata;
 HV *hv;

 hv = newHV();

 tdata = (EventTriggerData *) fcinfo->context;

 hv_store_string(hv, "event", cstr2sv(tdata->event));
 hv_store_string(hv, "tag", cstr2sv(tdata->tag));

 return newRV_noinc((SV *) hv);
}
