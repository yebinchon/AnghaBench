
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ao_needs_update; int output_aformat; } ;
struct chain {int f; int * ao; TYPE_2__ public; TYPE_1__* convert_wrapper; } ;
struct TYPE_3__ {int last_in_aformat; } ;


 int mp_aframe_config_copy (int ,int ) ;
 int mp_filter_wakeup (int ) ;

__attribute__((used)) static void on_audio_format_change(void *opaque)
{
    struct chain *p = opaque;






    mp_aframe_config_copy(p->public.output_aformat,
                          p->convert_wrapper->last_in_aformat);


    p->public.ao_needs_update = 1;
    p->ao = ((void*)0);




    mp_filter_wakeup(p->f);
}
