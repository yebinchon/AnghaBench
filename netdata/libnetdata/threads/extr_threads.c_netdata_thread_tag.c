
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* tag; } ;


 TYPE_1__* netdata_thread ;

const char *netdata_thread_tag(void) {
    return ((netdata_thread && netdata_thread->tag && *netdata_thread->tag)?netdata_thread->tag:"MAIN");
}
