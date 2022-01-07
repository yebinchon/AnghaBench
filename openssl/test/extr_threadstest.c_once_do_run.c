
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int once_run_count ;

__attribute__((used)) static void once_do_run(void)
{
    once_run_count++;
}
