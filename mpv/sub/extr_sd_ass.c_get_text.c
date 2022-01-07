
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd_ass_priv {char* last_text; TYPE_1__* ass_track; } ;
struct sd {struct sd_ass_priv* priv; } ;
struct buf {char* member_0; int member_1; int len; char* start; } ;
struct TYPE_4__ {long long Start; long long Duration; scalar_t__ Text; } ;
struct TYPE_3__ {int n_events; TYPE_2__* events; } ;
typedef TYPE_1__ ASS_Track ;
typedef TYPE_2__ ASS_Event ;


 double MP_NOPTS_VALUE ;
 int append (struct buf*,char) ;
 int ass_to_plaintext (struct buf*,scalar_t__) ;
 long long find_timestamp (struct sd*,double) ;
 scalar_t__ is_whitespace_only (char*,int) ;

__attribute__((used)) static char *get_text(struct sd *sd, double pts)
{
    struct sd_ass_priv *ctx = sd->priv;
    ASS_Track *track = ctx->ass_track;

    if (pts == MP_NOPTS_VALUE)
        return ((void*)0);
    long long ipts = find_timestamp(sd, pts);

    struct buf b = {ctx->last_text, sizeof(ctx->last_text) - 1};

    for (int i = 0; i < track->n_events; ++i) {
        ASS_Event *event = track->events + i;
        if (ipts >= event->Start && ipts < event->Start + event->Duration) {
            if (event->Text) {
                int start = b.len;
                ass_to_plaintext(&b, event->Text);
                if (is_whitespace_only(&b.start[start], b.len - start)) {
                    b.len = start;
                } else {
                    append(&b, '\n');
                }
            }
        }
    }

    b.start[b.len] = '\0';

    if (b.len > 0 && b.start[b.len - 1] == '\n')
        b.start[b.len - 1] = '\0';

    return ctx->last_text;
}
