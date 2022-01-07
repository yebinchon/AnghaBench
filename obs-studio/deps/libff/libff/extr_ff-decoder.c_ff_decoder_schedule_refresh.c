
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_decoder {int refresh_timer; } ;


 int ff_timer_schedule (int *,int) ;

void ff_decoder_schedule_refresh(struct ff_decoder *decoder, int delay)
{
 ff_timer_schedule(&decoder->refresh_timer, 1000 * delay);
}
