
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int dummy; } ;


 int cork (struct ao*,int) ;

__attribute__((used)) static void resume(struct ao *ao)
{
    cork(ao, 0);
}
