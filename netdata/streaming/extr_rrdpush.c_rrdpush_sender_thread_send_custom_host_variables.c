
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDHOST ;


 int D_STREAM ;
 int debug (int ,char*,int) ;
 int rrdpush_sender_thread_custom_host_variables_callback ;
 int rrdvar_callback_for_all_host_variables (int *,int ,int *) ;

__attribute__((used)) static void rrdpush_sender_thread_send_custom_host_variables(RRDHOST *host) {
    int ret = rrdvar_callback_for_all_host_variables(host, rrdpush_sender_thread_custom_host_variables_callback, host);
    (void)ret;

    debug(D_STREAM, "RRDVAR sent %d VARIABLES", ret);
}
