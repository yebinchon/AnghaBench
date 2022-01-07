
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int select (int ,int *,int *,int *,int *) ;

void
platform_sleep_until_signal(void)
{



    select(0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

}
