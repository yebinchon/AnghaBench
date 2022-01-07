
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_rtmp_exec_t ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ ngx_event_t ;


 int ngx_rtmp_exec_run (int *) ;

__attribute__((used)) static void
ngx_rtmp_exec_respawn(ngx_event_t *ev)
{
    ngx_rtmp_exec_run((ngx_rtmp_exec_t *) ev->data);
}
