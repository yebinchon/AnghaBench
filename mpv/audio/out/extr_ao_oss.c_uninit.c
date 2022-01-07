
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int close_device (struct ao*) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    close_device(ao);
}
