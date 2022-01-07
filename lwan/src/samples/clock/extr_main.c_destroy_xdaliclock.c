
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdaliclock {int dummy; } ;


 int xdaliclock_free (struct xdaliclock*) ;

__attribute__((used)) static void destroy_xdaliclock(void *data)
{
    struct xdaliclock *xdc = data;

    xdaliclock_free(xdc);
}
