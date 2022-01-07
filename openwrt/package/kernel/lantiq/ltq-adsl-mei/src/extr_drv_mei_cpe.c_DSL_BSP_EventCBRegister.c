
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t event; int pData; scalar_t__ function; } ;
struct TYPE_4__ {size_t event; int pData; scalar_t__ function; } ;
typedef TYPE_1__ DSL_BSP_EventCallBack_t ;


 size_t DSL_BSP_CB_FIRST ;
 size_t DSL_BSP_CB_LAST ;
 int EINVAL ;
 int IFX_MEI_EMSG (char*,...) ;
 TYPE_2__* dsl_bsp_event_callback ;

int DSL_BSP_EventCBRegister(DSL_BSP_EventCallBack_t *p)
{
 if (!p) {
                IFX_MEI_EMSG("Invalid parameter!\n");
                return -EINVAL;
 }
        if (p->event > DSL_BSP_CB_LAST || p->event < DSL_BSP_CB_FIRST) {
                IFX_MEI_EMSG("Invalid Event %d\n", p->event);
                return -EINVAL;
        }
        if (dsl_bsp_event_callback[p->event].function) {
                IFX_MEI_EMSG("Event %d already has a callback function registered!\n", p->event);
                return -1;
        } else {
                dsl_bsp_event_callback[p->event].function = p->function;
                dsl_bsp_event_callback[p->event].event = p->event;
                dsl_bsp_event_callback[p->event].pData = p->pData;
        }
        return 0;
}
