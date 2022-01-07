
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint ;
struct TYPE_11__ {TYPE_1__* Instance; } ;
struct TYPE_9__ {TYPE_5__ tim; TYPE_3__* channel; int callback; } ;
typedef TYPE_2__ pyb_timer_obj_t ;
struct TYPE_10__ {struct TYPE_10__* next; int channel; int callback; } ;
typedef TYPE_3__ pyb_timer_channel_obj_t ;
struct TYPE_8__ {int DIER; } ;


 int MICROPY_ERROR_PRINTER ;
 TYPE_2__** MP_STATE_PORT (int ) ;
 int PYB_TIMER_OBJ_ALL_NUM ;
 int TIMER_IRQ_MASK (int ) ;
 int __HAL_TIM_CLEAR_IT (TYPE_5__*,int) ;
 int __HAL_TIM_DISABLE_IT (TYPE_5__*,int) ;
 int mp_printf (int ,char*,unsigned int) ;
 int pyb_timer_obj_all ;
 int timer_handle_irq_channel (TYPE_2__*,int ,int ) ;

void timer_irq_handler(uint tim_id) {
    if (tim_id - 1 < PYB_TIMER_OBJ_ALL_NUM) {

        pyb_timer_obj_t *tim = MP_STATE_PORT(pyb_timer_obj_all)[tim_id - 1];

        if (tim == ((void*)0)) {



            return;
        }


        timer_handle_irq_channel(tim, 0, tim->callback);
        uint32_t handled = TIMER_IRQ_MASK(0);


        pyb_timer_channel_obj_t *chan = tim->channel;
        while (chan != ((void*)0)) {
            timer_handle_irq_channel(tim, chan->channel, chan->callback);
            handled |= TIMER_IRQ_MASK(chan->channel);
            chan = chan->next;
        }



        uint32_t unhandled = tim->tim.Instance->DIER & 0xff & ~handled;
        if (unhandled != 0) {
            __HAL_TIM_DISABLE_IT(&tim->tim, unhandled);
            __HAL_TIM_CLEAR_IT(&tim->tim, unhandled);
            mp_printf(MICROPY_ERROR_PRINTER, "unhandled interrupt SR=0x%02x (now disabled)\n", (unsigned int)unhandled);
        }
    }
}
