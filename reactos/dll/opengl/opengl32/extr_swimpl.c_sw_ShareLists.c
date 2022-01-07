
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sw_context {TYPE_1__* gl_ctx; } ;
struct TYPE_5__ {int RefCount; } ;
struct TYPE_4__ {TYPE_2__* Shared; } ;
typedef scalar_t__ DHGLRC ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*) ;
 int TRUE ;
 int gl_reference_shared_state (TYPE_1__*,TYPE_2__**,TYPE_2__*) ;

BOOL sw_ShareLists(DHGLRC dhglrcSrc, DHGLRC dhglrcDst)
{
    FIXME("Unimplemented!\n");
    return TRUE;
}
