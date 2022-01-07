
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarm (int ) ;
 int timeout ;

void timeout_end(void)
{
 alarm(0);
 timeout = 0;
}
