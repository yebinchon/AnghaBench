
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdaliclock {struct xdaliclock* clear_frame; struct xdaliclock* temp_frame; } ;


 int free (struct xdaliclock*) ;

void xdaliclock_free(struct xdaliclock *xdc)
{
    if (!xdc)
        return;

    free(xdc->temp_frame);
    free(xdc->clear_frame);
    free(xdc);
}
