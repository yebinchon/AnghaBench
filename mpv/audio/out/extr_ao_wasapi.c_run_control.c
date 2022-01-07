
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;
typedef enum aocontrol { ____Placeholder_aocontrol } aocontrol ;


 int thread_control (struct ao*,int,void*) ;

__attribute__((used)) static void run_control(void *p)
{
    void **pp = p;
    struct ao *ao = pp[0];
    enum aocontrol cmd = *(enum aocontrol *)pp[1];
    void *arg = pp[2];
    *(int *)pp[3] = thread_control(ao, cmd, arg);
}
