
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_subfilter {int draining; int filter; } ;


 int TA_FREEP (int *) ;

void mp_subfilter_destroy(struct mp_subfilter *sub)
{
    TA_FREEP(&sub->filter);
    sub->draining = 0;
}
