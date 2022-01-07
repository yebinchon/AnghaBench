
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ auto_pushed; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_publish_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int NGX_RTMP_ACCESS_PUBLISH ;
 int next_publish (TYPE_1__*,int *) ;
 scalar_t__ ngx_rtmp_access (TYPE_1__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_access_publish(ngx_rtmp_session_t *s, ngx_rtmp_publish_t *v)
{
    if (s->auto_pushed) {
        goto next;
    }

    if (ngx_rtmp_access(s, NGX_RTMP_ACCESS_PUBLISH) != NGX_OK) {
        return NGX_ERROR;
    }

next:
    return next_publish(s, v);
}
