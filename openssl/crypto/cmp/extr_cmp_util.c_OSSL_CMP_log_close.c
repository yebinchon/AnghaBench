
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSSL_TRACE_CATEGORY_CMP ;
 int OSSL_trace_set_channel (int ,int *) ;

void OSSL_CMP_log_close(void)
{
    (void)OSSL_trace_set_channel(OSSL_TRACE_CATEGORY_CMP, ((void*)0));
}
