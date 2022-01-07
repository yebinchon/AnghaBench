
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct lavfi_pad {scalar_t__ dir; scalar_t__ type; int name; TYPE_5__ in_fmt; TYPE_1__ pending; int pin; } ;
struct lavfi {int draining_recover; scalar_t__ initialized; } ;


 int MP_FATAL (struct lavfi*,char*,int ) ;
 scalar_t__ MP_FRAME_EOF ;
 scalar_t__ MP_PIN_IN ;
 int MP_VERBOSE (struct lavfi*,char*,int ) ;
 int assert (int) ;
 int is_format_ok (TYPE_1__,TYPE_5__) ;
 scalar_t__ mp_frame_is_data (TYPE_1__) ;
 int mp_frame_type_str (scalar_t__) ;
 int mp_frame_unref (TYPE_1__*) ;
 TYPE_1__ mp_pin_out_read (int ) ;
 int send_global_eof (struct lavfi*) ;

__attribute__((used)) static void read_pad_input(struct lavfi *c, struct lavfi_pad *pad)
{
    assert(pad->dir == MP_PIN_IN);

    if (pad->pending.type || c->draining_recover)
        return;

    pad->pending = mp_pin_out_read(pad->pin);

    if (pad->pending.type && pad->pending.type != MP_FRAME_EOF &&
        pad->pending.type != pad->type)
    {
        MP_FATAL(c, "unknown frame %s\n", mp_frame_type_str(pad->pending.type));
        mp_frame_unref(&pad->pending);
    }

    if (mp_frame_is_data(pad->pending) && pad->in_fmt.type &&
        !is_format_ok(pad->pending, pad->in_fmt))
    {
        if (!c->draining_recover)
            MP_VERBOSE(c, "format change on %s\n", pad->name);
        c->draining_recover = 1;
        if (c->initialized)
            send_global_eof(c);
    }
}
