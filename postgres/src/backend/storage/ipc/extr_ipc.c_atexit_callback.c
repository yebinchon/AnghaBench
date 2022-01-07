
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_exit_prepare (int) ;

__attribute__((used)) static void
atexit_callback(void)
{


 proc_exit_prepare(-1);
}
