#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sd_ass_priv {int /*<<< orphan*/  ass_library; } ;
struct sd {int /*<<< orphan*/  log; TYPE_1__* attachments; struct mp_subtitle_opts* opts; struct sd_ass_priv* priv; } ;
struct mp_subtitle_opts {int /*<<< orphan*/  use_embedded_fonts; int /*<<< orphan*/  ass_enabled; } ;
struct demux_attachment {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int num_entries; struct demux_attachment* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct demux_attachment*) ; 

__attribute__((used)) static void FUNC2(struct sd *sd)
{
    struct sd_ass_priv *ctx = sd->priv;
    struct mp_subtitle_opts *opts = sd->opts;
    if (!opts->ass_enabled || !opts->use_embedded_fonts || !sd->attachments)
        return;
    for (int i = 0; i < sd->attachments->num_entries; i++) {
        struct demux_attachment *f = &sd->attachments->entries[i];
        if (FUNC1(sd->log, f))
            FUNC0(ctx->ass_library, f->name, f->data, f->data_size);
    }
}