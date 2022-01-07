
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * member_0; } ;
struct TYPE_6__ {int wbe2; } ;
struct TYPE_7__ {TYPE_1__ cps; int busy; } ;
typedef TYPE_2__ DocHost ;
typedef TYPE_3__ DISPPARAMS ;
typedef scalar_t__ BOOL ;


 int DISPID_DOWNLOADBEGIN ;
 int DISPID_DOWNLOADCOMPLETE ;
 int TRACE (char*,scalar_t__) ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int call_sink (int ,int ,TYPE_3__*) ;

void notify_download_state(DocHost *dochost, BOOL is_downloading)
{
    DISPPARAMS dwl_dp = {((void*)0)};
    TRACE("(%x)\n", is_downloading);
    dochost->busy = is_downloading ? VARIANT_TRUE : VARIANT_FALSE;
    call_sink(dochost->cps.wbe2, is_downloading ? DISPID_DOWNLOADBEGIN : DISPID_DOWNLOADCOMPLETE, &dwl_dp);
}
