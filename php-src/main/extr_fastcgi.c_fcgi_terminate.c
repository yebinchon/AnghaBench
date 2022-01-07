
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int in_shutdown ;

void fcgi_terminate(void)
{
 in_shutdown = 1;
}
