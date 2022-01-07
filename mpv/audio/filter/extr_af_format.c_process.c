
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct priv {TYPE_2__* opts; int in_pin; } ;
struct mp_frame {scalar_t__ type; struct mp_aframe* data; } ;
struct mp_filter {int * ppins; struct priv* priv; } ;
struct mp_aframe {int dummy; } ;
struct TYPE_3__ {scalar_t__ num_chmaps; int * chmaps; } ;
struct TYPE_4__ {scalar_t__ out_srate; TYPE_1__ out_channels; scalar_t__ fail; } ;


 int MP_ERR (struct mp_filter*,char*) ;
 scalar_t__ MP_FRAME_AUDIO ;
 scalar_t__ MP_FRAME_EOF ;
 int mp_aframe_set_chmap (struct mp_aframe*,int *) ;
 int mp_aframe_set_rate (struct mp_aframe*,scalar_t__) ;
 int mp_filter_internal_mark_failed (struct mp_filter*) ;
 int mp_frame_unref (struct mp_frame*) ;
 int mp_pin_can_transfer_data (int ,int ) ;
 int mp_pin_in_write (int ,struct mp_frame) ;
 struct mp_frame mp_pin_out_read (int ) ;

__attribute__((used)) static void process(struct mp_filter *f)
{
    struct priv *p = f->priv;

    if (!mp_pin_can_transfer_data(f->ppins[1], p->in_pin))
        return;

    struct mp_frame frame = mp_pin_out_read(p->in_pin);

    if (p->opts->fail) {
        MP_ERR(f, "Failing on purpose.\n");
        goto error;
    }

    if (frame.type == MP_FRAME_EOF) {
        mp_pin_in_write(f->ppins[1], frame);
        return;
    }

    if (frame.type != MP_FRAME_AUDIO) {
        MP_ERR(f, "audio frame expected\n");
        goto error;
    }

    struct mp_aframe *in = frame.data;

    if (p->opts->out_channels.num_chmaps > 0) {
        if (!mp_aframe_set_chmap(in, &p->opts->out_channels.chmaps[0])) {
            MP_ERR(f, "could not force output channels\n");
            goto error;
        }
    }

    if (p->opts->out_srate)
        mp_aframe_set_rate(in, p->opts->out_srate);

    mp_pin_in_write(f->ppins[1], frame);
    return;

error:
    mp_frame_unref(&frame);
    mp_filter_internal_mark_failed(f);
}
