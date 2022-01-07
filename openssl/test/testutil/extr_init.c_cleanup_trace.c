
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sk_tracedata_pop_free (int ,int ) ;
 int trace_data_stack ;
 int tracedata_free ;

__attribute__((used)) static void cleanup_trace(void)
{
    sk_tracedata_pop_free(trace_data_stack, tracedata_free);
}
