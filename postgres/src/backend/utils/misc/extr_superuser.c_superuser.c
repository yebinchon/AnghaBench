
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetUserId () ;
 int superuser_arg (int ) ;

bool
superuser(void)
{
 return superuser_arg(GetUserId());
}
