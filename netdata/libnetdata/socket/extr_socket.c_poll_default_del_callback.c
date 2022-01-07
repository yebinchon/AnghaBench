
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ POLLINFO ;


 int error (char*) ;

void poll_default_del_callback(POLLINFO *pi) {
    if(pi->data)
        error("POLLFD: internal error: del_callback_default() called with data pointer - possible memory leak");
}
