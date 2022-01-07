
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int in_shutdown ;

int fcgi_in_shutdown(void)
{
 return in_shutdown;
}
