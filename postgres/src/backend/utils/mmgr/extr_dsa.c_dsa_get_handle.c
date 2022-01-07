
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ dsa_handle ;
struct TYPE_5__ {TYPE_1__* control; } ;
typedef TYPE_2__ dsa_area ;
struct TYPE_4__ {scalar_t__ handle; } ;


 int Assert (int) ;
 scalar_t__ DSM_HANDLE_INVALID ;

dsa_handle
dsa_get_handle(dsa_area *area)
{
 Assert(area->control->handle != DSM_HANDLE_INVALID);
 return area->control->handle;
}
