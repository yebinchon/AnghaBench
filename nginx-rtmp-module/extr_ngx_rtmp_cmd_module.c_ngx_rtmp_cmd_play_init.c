
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
struct TYPE_13__ {scalar_t__ silent; scalar_t__ reset; scalar_t__ duration; scalar_t__ start; int args; scalar_t__ name; } ;
typedef TYPE_3__ ngx_rtmp_play_t ;
typedef int ngx_rtmp_header_t ;
struct TYPE_14__ {int member_0; int member_3; scalar_t__* member_2; int const member_1; } ;
typedef TYPE_4__ ngx_rtmp_amf_elt_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;
typedef int in_elts ;
struct TYPE_11__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_INFO ;





 int ngx_log_error (int ,int ,int ,char*,scalar_t__,int ,int ,int ,int ,int ) ;
 int ngx_memzero (TYPE_3__ const*,int) ;

 int ngx_rtmp_cmd_fill_args (scalar_t__,int ) ;
 int ngx_rtmp_play (TYPE_2__*,TYPE_3__ const*) ;
 scalar_t__ ngx_rtmp_receive_amf (TYPE_2__*,int *,TYPE_4__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_cmd_play_init(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
        ngx_chain_t *in)
{
    static ngx_rtmp_play_t v;

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

        { 130 | 131,
          128,
          &v.start, 0 },

        { 130 | 131,
          128,
          &v.duration, 0 },

        { 130 | 133,
          128,
          &v.reset, 0 }
    };

    ngx_memzero(&v, sizeof(v));

    if (ngx_rtmp_receive_amf(s, in, in_elts,
                             sizeof(in_elts) / sizeof(in_elts[0])))
    {
        return NGX_ERROR;
    }

    ngx_rtmp_cmd_fill_args(v.name, v.args);

    ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                  "play: name='%s' args='%s' start=%i duration=%i "
                  "reset=%i silent=%i",
                  v.name, v.args, (ngx_int_t) v.start,
                  (ngx_int_t) v.duration, (ngx_int_t) v.reset,
                  (ngx_int_t) v.silent);

    return ngx_rtmp_play(s, &v);
}
