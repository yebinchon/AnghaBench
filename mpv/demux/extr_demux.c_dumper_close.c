
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_internal {scalar_t__ dumper_status; int * dumper; } ;


 scalar_t__ CONTROL_FALSE ;
 scalar_t__ CONTROL_TRUE ;
 int mp_recorder_destroy (int *) ;

__attribute__((used)) static void dumper_close(struct demux_internal *in)
{
    if (in->dumper)
        mp_recorder_destroy(in->dumper);
    in->dumper = ((void*)0);
    if (in->dumper_status == CONTROL_TRUE)
        in->dumper_status = CONTROL_FALSE;
}
