
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int pm_events ;
typedef int ngx_rtmp_handler_pt ;
struct TYPE_22__ {size_t nelts; TYPE_5__* elts; } ;
struct TYPE_15__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_17__ {TYPE_8__ amf_arrays; int amf_hash; TYPE_1__ amf; TYPE_8__* events; } ;
typedef TYPE_3__ ngx_rtmp_core_main_conf_t ;
struct TYPE_16__ {scalar_t__ len; int data; } ;
struct TYPE_18__ {int handler; TYPE_2__ name; } ;
typedef TYPE_4__ ngx_rtmp_amf_handler_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_19__ {int * value; TYPE_2__ key; int key_hash; } ;
typedef TYPE_5__ ngx_hash_key_t ;
struct TYPE_20__ {int max_size; char* name; int * temp_pool; int pool; int bucket_size; int (* key ) (int ,scalar_t__) ;int * hash; } ;
typedef TYPE_6__ ngx_hash_init_t ;
struct TYPE_21__ {int pool; } ;
typedef TYPE_7__ ngx_conf_t ;
typedef TYPE_8__ ngx_array_t ;
typedef int amf_events ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;



 size_t NGX_RTMP_MSG_AGGREGATE ;
 size_t NGX_RTMP_MSG_USER ;
 int * ngx_array_create (int ,int,int) ;
 int ngx_array_init (TYPE_8__*,int ,int,int) ;
 void* ngx_array_push (TYPE_8__*) ;
 int ngx_cacheline_size ;
 scalar_t__ ngx_hash_init (TYPE_6__*,TYPE_5__*,size_t) ;
 int ngx_hash_key_lc (int ,scalar_t__) ;
 int ngx_rtmp_aggregate_message_handler ;
 int ngx_rtmp_amf_message_handler ;
 int ngx_rtmp_protocol_message_handler ;
 int ngx_rtmp_user_message_handler ;
 int ngx_strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_init_event_handlers(ngx_conf_t *cf, ngx_rtmp_core_main_conf_t *cmcf)
{
    ngx_hash_init_t calls_hash;
    ngx_rtmp_handler_pt *eh;
    ngx_rtmp_amf_handler_t *h;
    ngx_hash_key_t *ha;
    size_t n, m;

    static size_t pm_events[] = {
        128,
        138,
        137,
        136,
        129
    };

    static size_t amf_events[] = {
        132,
        131,
        130,
        135,
        134,
        133
    };


    for(n = 0; n < sizeof(pm_events) / sizeof(pm_events[0]); ++n) {
        eh = ngx_array_push(&cmcf->events[pm_events[n]]);
        *eh = ngx_rtmp_protocol_message_handler;
    }


    for(n = 0; n < sizeof(amf_events) / sizeof(amf_events[0]); ++n) {
        eh = ngx_array_push(&cmcf->events[amf_events[n]]);
        *eh = ngx_rtmp_amf_message_handler;
    }


    eh = ngx_array_push(&cmcf->events[NGX_RTMP_MSG_USER]);
    *eh = ngx_rtmp_user_message_handler;


    eh = ngx_array_push(&cmcf->events[NGX_RTMP_MSG_AGGREGATE]);
    *eh = ngx_rtmp_aggregate_message_handler;


    ngx_array_init(&cmcf->amf_arrays, cf->pool, 1, sizeof(ngx_hash_key_t));

    h = cmcf->amf.elts;
    for(n = 0; n < cmcf->amf.nelts; ++n, ++h) {
        ha = cmcf->amf_arrays.elts;
        for(m = 0; m < cmcf->amf_arrays.nelts; ++m, ++ha) {
            if (h->name.len == ha->key.len
                    && !ngx_strncmp(h->name.data, ha->key.data, ha->key.len))
            {
                break;
            }
        }
        if (m == cmcf->amf_arrays.nelts) {
            ha = ngx_array_push(&cmcf->amf_arrays);
            ha->key = h->name;
            ha->key_hash = ngx_hash_key_lc(ha->key.data, ha->key.len);
            ha->value = ngx_array_create(cf->pool, 1,
                    sizeof(ngx_rtmp_handler_pt));
            if (ha->value == ((void*)0)) {
                return NGX_ERROR;
            }
        }

        eh = ngx_array_push((ngx_array_t*)ha->value);
        *eh = h->handler;
    }

    calls_hash.hash = &cmcf->amf_hash;
    calls_hash.key = ngx_hash_key_lc;
    calls_hash.max_size = 512;
    calls_hash.bucket_size = ngx_cacheline_size;
    calls_hash.name = "amf_hash";
    calls_hash.pool = cf->pool;
    calls_hash.temp_pool = ((void*)0);

    if (ngx_hash_init(&calls_hash, cmcf->amf_arrays.elts, cmcf->amf_arrays.nelts)
            != NGX_OK)
    {
        return NGX_ERROR;
    }

    return NGX_OK;
}
