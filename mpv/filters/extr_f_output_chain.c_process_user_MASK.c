#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mp_user_filter {char* label; char* name; int failed; int error_eof_sent; double last_in_pts; double last_out_pts; scalar_t__ last_is_active; TYPE_2__* f; struct chain* p; } ;
struct mp_frame {int dummy; } ;
struct mp_filter_command {scalar_t__ is_active; int /*<<< orphan*/  type; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct mp_user_filter* priv; } ;
struct TYPE_6__ {int failed_output_conversion; } ;
struct chain {struct mp_user_filter* convert_wrapper; int /*<<< orphan*/  f; TYPE_1__ public; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 struct mp_frame MP_EOF_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct chain*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct chain*,char*) ; 
 int /*<<< orphan*/  MP_FILTER_COMMAND_IS_ACTIVE ; 
 double MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC2 (struct chain*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_user_filter*,struct mp_frame) ; 
 scalar_t__ FUNC5 (TYPE_2__*,struct mp_filter_command*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 double FUNC10 (struct mp_frame) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct mp_frame) ; 
 struct mp_frame FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct mp_filter *f)
{
    struct mp_user_filter *u = f->priv;
    struct chain *p = u->p;

    FUNC8(u->f, f);
    const char *name = u->label ? u->label : u->name;
    FUNC3(u->name);

    if (!u->failed && FUNC6(u->f)) {
        if (u == p->convert_wrapper) {
            // This is a fuckup we can't ignore.
            FUNC1(p, "Cannot convert decoder/filter output to any format "
                     "supported by the output.\n");
            p->public.failed_output_conversion = true;
            FUNC9(p->f);
        } else {
            FUNC0(p, "Disabling filter %s because it has failed.\n", name);
            FUNC7(u->f); // clear out staled buffered data
        }
        u->failed = true;
    }

    if (u->failed) {
        if (u == p->convert_wrapper) {
            if (FUNC12(f->ppins[1])) {
                if (!u->error_eof_sent)
                    FUNC13(f->ppins[1], MP_EOF_FRAME);
                u->error_eof_sent = true;
            }
            return;
        }

        FUNC15(f->ppins[1], f->ppins[0]);
        return;
    }

    if (FUNC11(u->f->pins[0], f->ppins[0])) {
        struct mp_frame frame = FUNC14(f->ppins[0]);

        FUNC4(u, frame);

        double pts = FUNC10(frame);
        if (pts != MP_NOPTS_VALUE)
            u->last_in_pts = pts;

        FUNC13(u->f->pins[0], frame);
    }

    if (FUNC11(f->ppins[1], u->f->pins[1])) {
        struct mp_frame frame = FUNC14(u->f->pins[1]);

        double pts = FUNC10(frame);
        if (pts != MP_NOPTS_VALUE)
            u->last_out_pts = pts;

        FUNC13(f->ppins[1], frame);

        struct mp_filter_command cmd = {.type = MP_FILTER_COMMAND_IS_ACTIVE};
        if (FUNC5(u->f, &cmd) && u->last_is_active != cmd.is_active) {
            u->last_is_active = cmd.is_active;
            FUNC2(p, "[%s] (%sabled)\n", u->name,
                       u->last_is_active ? "en" : "dis");
        }
    }
}