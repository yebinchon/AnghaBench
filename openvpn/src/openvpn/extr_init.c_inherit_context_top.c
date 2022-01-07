
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int event_set_owned; int link_socket_owned; int buffers_owned; int es_owned; int * comp_context; int * event_set; int * tls_multi; int gc; } ;
struct TYPE_6__ {int proto; } ;
struct TYPE_8__ {TYPE_2__ ce; } ;
struct TYPE_5__ {int tuntap_owned; int status_output_owned; int ifconfig_pool_persist_owned; } ;
struct context {int first_time; int plugins_owned; TYPE_3__ c2; TYPE_4__ options; TYPE_1__ c1; int gc; int * c0; int mode; } ;


 int CM_TOP_CLONE ;
 int do_event_set_init (struct context*,int) ;
 int gc_detach (int *) ;
 int options_detach (TYPE_4__*) ;
 scalar_t__ proto_is_dgram (int ) ;

void
inherit_context_top(struct context *dest,
                    const struct context *src)
{

    *dest = *src;
    dest->mode = CM_TOP_CLONE;

    dest->first_time = 0;
    dest->c0 = ((void*)0);

    options_detach(&dest->options);
    gc_detach(&dest->gc);
    gc_detach(&dest->c2.gc);


    dest->plugins_owned = 0;

    dest->c2.tls_multi = ((void*)0);


    dest->c1.tuntap_owned = 0;
    dest->c1.status_output_owned = 0;





    dest->c2.event_set_owned = 0;
    dest->c2.link_socket_owned = 0;
    dest->c2.buffers_owned = 0;
    dest->c2.es_owned = 0;

    dest->c2.event_set = ((void*)0);
    if (proto_is_dgram(src->options.ce.proto))
    {
        do_event_set_init(dest, 0);
    }




}
