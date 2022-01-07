
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_input_src {int dummy; } ;
struct input_ctx {struct mp_input_src** sources; scalar_t__ num_sources; } ;


 int input_lock (struct input_ctx*) ;
 int input_unlock (struct input_ctx*) ;
 int mp_input_src_kill (struct mp_input_src*) ;

__attribute__((used)) static void close_input_sources(struct input_ctx *ictx)
{


    while (1) {
        input_lock(ictx);
        struct mp_input_src *src = ictx->num_sources ? ictx->sources[0] : ((void*)0);
        input_unlock(ictx);
        if (!src)
            break;
        mp_input_src_kill(src);
    }
}
