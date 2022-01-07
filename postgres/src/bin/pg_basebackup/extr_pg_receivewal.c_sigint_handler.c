
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int time_to_stop ;

__attribute__((used)) static void
sigint_handler(int signum)
{
 time_to_stop = 1;
}
