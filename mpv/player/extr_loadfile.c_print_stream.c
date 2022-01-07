
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct track {int type; scalar_t__ is_external; int title; scalar_t__ attached_picture; scalar_t__ forced_track; scalar_t__ default_track; int lang; int user_tid; scalar_t__ selected; struct sh_stream* stream; } ;
struct sh_stream {TYPE_2__* codec; } ;
struct MPContext {int dummy; } ;
struct TYPE_3__ {int num; } ;
struct TYPE_4__ {char* codec; int samplerate; TYPE_1__ channels; int fps; int disp_h; int disp_w; } ;


 int APPEND (char*,char*,...) ;
 int MP_INFO (struct MPContext*,char*,char*) ;




__attribute__((used)) static void print_stream(struct MPContext *mpctx, struct track *t)
{
    struct sh_stream *s = t->stream;
    const char *tname = "?";
    const char *selopt = "?";
    const char *langopt = "?";
    switch (t->type) {
    case 128:
        tname = "Video"; selopt = "vid"; langopt = ((void*)0);
        break;
    case 130:
        tname = "Audio"; selopt = "aid"; langopt = "alang";
        break;
    case 129:
        tname = "Subs"; selopt = "sid"; langopt = "slang";
        break;
    }
    char b[2048] = {0};
    APPEND(b, " %3s %-5s", t->selected ? "(+)" : "", tname);
    APPEND(b, " --%s=%d", selopt, t->user_tid);
    if (t->lang && langopt)
        APPEND(b, " --%s=%s", langopt, t->lang);
    if (t->default_track)
        APPEND(b, " (*)");
    if (t->forced_track)
        APPEND(b, " (f)");
    if (t->attached_picture)
        APPEND(b, " [P]");
    if (t->title)
        APPEND(b, " '%s'", t->title);
    const char *codec = s ? s->codec->codec : ((void*)0);
    APPEND(b, " (%s", codec ? codec : "<unknown>");
    if (t->type == 128) {
        if (s && s->codec->disp_w)
            APPEND(b, " %dx%d", s->codec->disp_w, s->codec->disp_h);
        if (s && s->codec->fps)
            APPEND(b, " %.3ffps", s->codec->fps);
    } else if (t->type == 130) {
        if (s && s->codec->channels.num)
            APPEND(b, " %dch", s->codec->channels.num);
        if (s && s->codec->samplerate)
            APPEND(b, " %dHz", s->codec->samplerate);
    }
    APPEND(b, ")");
    if (t->is_external)
        APPEND(b, " (external)");
    MP_INFO(mpctx, "%s\n", b);
}
