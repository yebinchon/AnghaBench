
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int v ;
struct TYPE_12__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_13__ {int silent; int type; int args; int name; } ;
typedef TYPE_3__ ngx_rtmp_publish_t ;
typedef int ngx_rtmp_header_t ;
struct TYPE_14__ {int member_0; int member_3; int * member_2; int const member_1; } ;
typedef TYPE_4__ ngx_rtmp_amf_elt_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;
typedef int in_elts ;
struct TYPE_11__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_INFO ;




 int ngx_log_error (int ,int ,int ,char*,int ,int ,int ,int ) ;
 int ngx_memzero (TYPE_3__ const*,int) ;

 int ngx_rtmp_cmd_fill_args (int ,int ) ;
 int ngx_rtmp_publish (TYPE_2__*,TYPE_3__ const*) ;
 scalar_t__ ngx_rtmp_receive_amf (TYPE_2__*,int *,TYPE_4__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_cmd_publish_init(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
        ngx_chain_t *in)
{
    static ngx_rtmp_publish_t v;

    static ngx_rtmp_amf_elt_t in_elts[] = {


        { 131,
          128,
          ((void*)0), 0 },

        { 132,
          128,
          ((void*)0), 0 },

        { 129,
          128,
          &v.name, sizeof(v.name) },

        { 130 | 129,
          128,
          &v.type, sizeof(v.type) },
    };

    ngx_memzero(&v, sizeof(v));

    if (ngx_rtmp_receive_amf(s, in, in_elts,
                             sizeof(in_elts) / sizeof(in_elts[0])))
    {
        return NGX_ERROR;
    }

    ngx_rtmp_cmd_fill_args(v.name, v.args);

    ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                  "publish: name='%s' args='%s' type=%s silent=%d",
                  v.name, v.args, v.type, v.silent);

    return ngx_rtmp_publish(s, &v);
}
