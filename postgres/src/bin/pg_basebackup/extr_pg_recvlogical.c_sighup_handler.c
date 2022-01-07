
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int output_reopen ;

__attribute__((used)) static void
sighup_handler(int signum)
{
 output_reopen = 1;
}
