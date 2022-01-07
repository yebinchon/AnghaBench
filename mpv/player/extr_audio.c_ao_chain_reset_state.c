
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao_chain {int out_eof; int underrun; int ao_buffer; int output_frame; int last_out_pts; } ;


 int MP_NOPTS_VALUE ;
 int TA_FREEP (int *) ;
 int mp_audio_buffer_clear (int ) ;

__attribute__((used)) static void ao_chain_reset_state(struct ao_chain *ao_c)
{
    ao_c->last_out_pts = MP_NOPTS_VALUE;
    TA_FREEP(&ao_c->output_frame);
    ao_c->out_eof = 0;
    ao_c->underrun = 0;

    mp_audio_buffer_clear(ao_c->ao_buffer);
}
