
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; scalar_t__ type; } ;
typedef TYPE_1__ RRDVAR ;
typedef int RRDHOST ;


 int RRDVAR_OPTION_CUSTOM_HOST_VAR ;
 scalar_t__ RRDVAR_TYPE_CALCULATED ;
 int rrdpush_sender_add_host_variable_to_buffer_nolock (int *,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rrdpush_sender_thread_custom_host_variables_callback(void *rrdvar_ptr, void *host_ptr) {
    RRDVAR *rv = (RRDVAR *)rrdvar_ptr;
    RRDHOST *host = (RRDHOST *)host_ptr;

    if(unlikely(rv->options & RRDVAR_OPTION_CUSTOM_HOST_VAR && rv->type == RRDVAR_TYPE_CALCULATED)) {
        rrdpush_sender_add_host_variable_to_buffer_nolock(host, rv);


        return 1;
    }


    return 0;
}
