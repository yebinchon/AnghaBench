
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_subfilter {int draining; int frame; scalar_t__ filter; } ;


 int TA_FREEP (scalar_t__*) ;
 int mp_frame_unref (int *) ;

void mp_subfilter_reset(struct mp_subfilter *sub)
{
    if (sub->filter && sub->draining)
        TA_FREEP(&sub->filter);
    sub->draining = 0;
    mp_frame_unref(&sub->frame);
}
