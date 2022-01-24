#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct track {int type; scalar_t__ is_external; int /*<<< orphan*/  title; scalar_t__ attached_picture; scalar_t__ forced_track; scalar_t__ default_track; int /*<<< orphan*/  lang; int /*<<< orphan*/  user_tid; scalar_t__ selected; struct sh_stream* stream; } ;
struct sh_stream {TYPE_2__* codec; } ;
struct MPContext {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  num; } ;
struct TYPE_4__ {char* codec; int /*<<< orphan*/  samplerate; TYPE_1__ channels; int /*<<< orphan*/  fps; int /*<<< orphan*/  disp_h; int /*<<< orphan*/  disp_w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,char*,char*) ; 
#define  STREAM_AUDIO 130 
#define  STREAM_SUB 129 
#define  STREAM_VIDEO 128 

__attribute__((used)) static void FUNC2(struct MPContext *mpctx, struct track *t)
{
    struct sh_stream *s = t->stream;
    const char *tname = "?";
    const char *selopt = "?";
    const char *langopt = "?";
    switch (t->type) {
    case STREAM_VIDEO:
        tname = "Video"; selopt = "vid"; langopt = NULL;
        break;
    case STREAM_AUDIO:
        tname = "Audio"; selopt = "aid"; langopt = "alang";
        break;
    case STREAM_SUB:
        tname = "Subs"; selopt = "sid"; langopt = "slang";
        break;
    }
    char b[2048] = {0};
    FUNC0(b, " %3s %-5s", t->selected ? "(+)" : "", tname);
    FUNC0(b, " --%s=%d", selopt, t->user_tid);
    if (t->lang && langopt)
        FUNC0(b, " --%s=%s", langopt, t->lang);
    if (t->default_track)
        FUNC0(b, " (*)");
    if (t->forced_track)
        FUNC0(b, " (f)");
    if (t->attached_picture)
        FUNC0(b, " [P]");
    if (t->title)
        FUNC0(b, " '%s'", t->title);
    const char *codec = s ? s->codec->codec : NULL;
    FUNC0(b, " (%s", codec ? codec : "<unknown>");
    if (t->type == STREAM_VIDEO) {
        if (s && s->codec->disp_w)
            FUNC0(b, " %dx%d", s->codec->disp_w, s->codec->disp_h);
        if (s && s->codec->fps)
            FUNC0(b, " %.3ffps", s->codec->fps);
    } else if (t->type == STREAM_AUDIO) {
        if (s && s->codec->channels.num)
            FUNC0(b, " %dch", s->codec->channels.num);
        if (s && s->codec->samplerate)
            FUNC0(b, " %dHz", s->codec->samplerate);
    }
    FUNC0(b, ")");
    if (t->is_external)
        FUNC0(b, " (external)");
    FUNC1(mpctx, "%s\n", b);
}