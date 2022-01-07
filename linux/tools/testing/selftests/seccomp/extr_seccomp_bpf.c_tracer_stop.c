
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tracer_running ;

void tracer_stop(int sig)
{
 tracer_running = 0;
}
