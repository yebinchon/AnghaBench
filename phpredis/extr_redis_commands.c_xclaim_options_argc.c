
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int time; int * type; } ;
struct TYPE_5__ {int retrycount; scalar_t__ justid; scalar_t__ force; TYPE_1__ idle; } ;
typedef TYPE_2__ xclaimOptions ;



__attribute__((used)) static int xclaim_options_argc(xclaimOptions *opt) {
    int argc = 0;

    if (opt->idle.type != ((void*)0) && opt->idle.time != -1)
        argc += 2;
    if (opt->retrycount != -1)
        argc += 2;
    if (opt->force)
        argc++;
    if (opt->justid)
        argc++;

    return argc;
}
