
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd_ass_priv {int ass_library; } ;
struct sd {int log; TYPE_1__* attachments; struct mp_subtitle_opts* opts; struct sd_ass_priv* priv; } ;
struct mp_subtitle_opts {int use_embedded_fonts; int ass_enabled; } ;
struct demux_attachment {int data_size; int data; int name; } ;
struct TYPE_2__ {int num_entries; struct demux_attachment* entries; } ;


 int ass_add_font (int ,int ,int ,int ) ;
 scalar_t__ attachment_is_font (int ,struct demux_attachment*) ;

__attribute__((used)) static void add_subtitle_fonts(struct sd *sd)
{
    struct sd_ass_priv *ctx = sd->priv;
    struct mp_subtitle_opts *opts = sd->opts;
    if (!opts->ass_enabled || !opts->use_embedded_fonts || !sd->attachments)
        return;
    for (int i = 0; i < sd->attachments->num_entries; i++) {
        struct demux_attachment *f = &sd->attachments->entries[i];
        if (attachment_is_font(sd->log, f))
            ass_add_font(ctx->ass_library, f->name, f->data, f->data_size);
    }
}
