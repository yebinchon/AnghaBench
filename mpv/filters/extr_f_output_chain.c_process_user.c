
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mp_user_filter {char* label; char* name; int failed; int error_eof_sent; double last_in_pts; double last_out_pts; scalar_t__ last_is_active; TYPE_2__* f; struct chain* p; } ;
struct mp_frame {int dummy; } ;
struct mp_filter_command {scalar_t__ is_active; int type; } ;
struct mp_filter {int * ppins; struct mp_user_filter* priv; } ;
struct TYPE_6__ {int failed_output_conversion; } ;
struct chain {struct mp_user_filter* convert_wrapper; int f; TYPE_1__ public; } ;
struct TYPE_7__ {int * pins; } ;


 struct mp_frame MP_EOF_FRAME ;
 int MP_ERR (struct chain*,char*,char const*) ;
 int MP_FATAL (struct chain*,char*) ;
 int MP_FILTER_COMMAND_IS_ACTIVE ;
 double MP_NOPTS_VALUE ;
 int MP_VERBOSE (struct chain*,char*,char*,char*) ;
 int assert (char*) ;
 int check_in_format_change (struct mp_user_filter*,struct mp_frame) ;
 scalar_t__ mp_filter_command (TYPE_2__*,struct mp_filter_command*) ;
 scalar_t__ mp_filter_has_failed (TYPE_2__*) ;
 int mp_filter_reset (TYPE_2__*) ;
 int mp_filter_set_error_handler (TYPE_2__*,struct mp_filter*) ;
 int mp_filter_wakeup (int ) ;
 double mp_frame_get_pts (struct mp_frame) ;
 scalar_t__ mp_pin_can_transfer_data (int ,int ) ;
 scalar_t__ mp_pin_in_needs_data (int ) ;
 int mp_pin_in_write (int ,struct mp_frame) ;
 struct mp_frame mp_pin_out_read (int ) ;
 int mp_pin_transfer_data (int ,int ) ;

__attribute__((used)) static void process_user(struct mp_filter *f)
{
    struct mp_user_filter *u = f->priv;
    struct chain *p = u->p;

    mp_filter_set_error_handler(u->f, f);
    const char *name = u->label ? u->label : u->name;
    assert(u->name);

    if (!u->failed && mp_filter_has_failed(u->f)) {
        if (u == p->convert_wrapper) {

            MP_FATAL(p, "Cannot convert decoder/filter output to any format "
                     "supported by the output.\n");
            p->public.failed_output_conversion = 1;
            mp_filter_wakeup(p->f);
        } else {
            MP_ERR(p, "Disabling filter %s because it has failed.\n", name);
            mp_filter_reset(u->f);
        }
        u->failed = 1;
    }

    if (u->failed) {
        if (u == p->convert_wrapper) {
            if (mp_pin_in_needs_data(f->ppins[1])) {
                if (!u->error_eof_sent)
                    mp_pin_in_write(f->ppins[1], MP_EOF_FRAME);
                u->error_eof_sent = 1;
            }
            return;
        }

        mp_pin_transfer_data(f->ppins[1], f->ppins[0]);
        return;
    }

    if (mp_pin_can_transfer_data(u->f->pins[0], f->ppins[0])) {
        struct mp_frame frame = mp_pin_out_read(f->ppins[0]);

        check_in_format_change(u, frame);

        double pts = mp_frame_get_pts(frame);
        if (pts != MP_NOPTS_VALUE)
            u->last_in_pts = pts;

        mp_pin_in_write(u->f->pins[0], frame);
    }

    if (mp_pin_can_transfer_data(f->ppins[1], u->f->pins[1])) {
        struct mp_frame frame = mp_pin_out_read(u->f->pins[1]);

        double pts = mp_frame_get_pts(frame);
        if (pts != MP_NOPTS_VALUE)
            u->last_out_pts = pts;

        mp_pin_in_write(f->ppins[1], frame);

        struct mp_filter_command cmd = {.type = MP_FILTER_COMMAND_IS_ACTIVE};
        if (mp_filter_command(u->f, &cmd) && u->last_is_active != cmd.is_active) {
            u->last_is_active = cmd.is_active;
            MP_VERBOSE(p, "[%s] (%sabled)\n", u->name,
                       u->last_is_active ? "en" : "dis");
        }
    }
}
