
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int uninit (struct ao*) ;

__attribute__((used)) static void hotplug_uninit(struct ao *ao)
{
    uninit(ao);
}
