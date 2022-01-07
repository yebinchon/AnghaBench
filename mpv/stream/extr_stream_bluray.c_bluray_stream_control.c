
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct stream_lang_req {int name; int id; int type; } ;
struct meta_dl {int * di_name; } ;
struct bluray_priv_s {unsigned int const num_titles; unsigned int current_title; int current_angle; int bd; TYPE_4__* title_info; } ;
struct TYPE_10__ {struct bluray_priv_s* priv; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_12__ {char* lang; int pid; } ;
struct TYPE_11__ {unsigned int chapter_count; int angle_count; TYPE_2__* clips; int clip_count; int duration; TYPE_1__* chapters; } ;
struct TYPE_9__ {int audio_stream_count; int pg_stream_count; TYPE_5__* pg_streams; TYPE_5__* audio_streams; } ;
struct TYPE_8__ {int start; } ;
typedef TYPE_4__ BLURAY_TITLE_INFO ;
typedef TYPE_5__ BLURAY_STREAM_INFO ;


 int BD_TIME_FROM_MP (double) ;
 double BD_TIME_TO_MP (int ) ;
 double MP_NOPTS_VALUE ;
 int STREAM_ERROR ;
 int STREAM_OK ;

 int STREAM_UNSUPPORTED ;
 struct meta_dl* bd_get_meta (int ) ;
 int bd_seamless_angle_change (int ,int) ;
 int bd_seek_time (int ,int ) ;
 int bd_tell_time (int ) ;
 int play_title (struct bluray_priv_s*,unsigned int const) ;
 int snprintf (int ,int,char*,char*) ;
 int stream_drop_buffers (TYPE_3__*) ;
 char* talloc_strdup (int *,int *) ;

__attribute__((used)) static int bluray_stream_control(stream_t *s, int cmd, void *arg)
{
    struct bluray_priv_s *b = s->priv;

    switch (cmd) {
    case 134: {
        const BLURAY_TITLE_INFO *ti = b->title_info;
        if (!ti)
            return STREAM_UNSUPPORTED;
        *((unsigned int *) arg) = ti->chapter_count;
        return STREAM_OK;
    }
    case 140: {
        const BLURAY_TITLE_INFO *ti = b->title_info;
        if (!ti)
            return STREAM_UNSUPPORTED;
        int chapter = *(double *)arg;
        double time = MP_NOPTS_VALUE;
        if (chapter >= 0 || chapter < ti->chapter_count)
            time = BD_TIME_TO_MP(ti->chapters[chapter].start);
        if (time == MP_NOPTS_VALUE)
            return STREAM_ERROR;
        *(double *)arg = time;
        return STREAM_OK;
    }
    case 129: {
        const uint32_t title = *((unsigned int*)arg);
        if (title >= b->num_titles || !play_title(b, title))
            return STREAM_UNSUPPORTED;
        b->current_title = title;
        return STREAM_OK;
    }
    case 138: {
        *((unsigned int *) arg) = b->current_title;
        return STREAM_OK;
    }
    case 133: {
        *((unsigned int *)arg) = b->num_titles;
        return STREAM_OK;
    }
    case 132: {
        const BLURAY_TITLE_INFO *ti = b->title_info;
        if (!ti)
            return STREAM_UNSUPPORTED;
        *((double *) arg) = BD_TIME_TO_MP(ti->duration);
        return STREAM_OK;
    }
    case 139: {
        *((double *) arg) = BD_TIME_TO_MP(bd_tell_time(b->bd));
        return STREAM_OK;
    }
    case 131: {
        double pts = *((double *) arg);
        bd_seek_time(b->bd, BD_TIME_FROM_MP(pts));
        stream_drop_buffers(s);

        return STREAM_OK;
    }
    case 135: {
        const BLURAY_TITLE_INFO *ti = b->title_info;
        if (!ti)
            return STREAM_UNSUPPORTED;
        *((int *) arg) = ti->angle_count;
        return STREAM_OK;
    }
    case 141: {
        *((int *) arg) = b->current_angle;
        return STREAM_OK;
    }
    case 130: {
        const BLURAY_TITLE_INFO *ti = b->title_info;
        if (!ti)
            return STREAM_UNSUPPORTED;
        int angle = *((int *) arg);
        if (angle < 0 || angle > ti->angle_count)
            return STREAM_UNSUPPORTED;
        b->current_angle = angle;
        bd_seamless_angle_change(b->bd, angle);
        return STREAM_OK;
    }
    case 136: {
        const BLURAY_TITLE_INFO *ti = b->title_info;
        if (ti && ti->clip_count) {
            struct stream_lang_req *req = arg;
            BLURAY_STREAM_INFO *si = ((void*)0);
            int count = 0;
            switch (req->type) {
            case 142:
                count = ti->clips[0].audio_stream_count;
                si = ti->clips[0].audio_streams;
                break;
            case 128:
                count = ti->clips[0].pg_stream_count;
                si = ti->clips[0].pg_streams;
                break;
            }
            for (int n = 0; n < count; n++) {
                BLURAY_STREAM_INFO *i = &si[n];
                if (i->pid == req->id) {
                    snprintf(req->name, sizeof(req->name), "%.4s", i->lang);
                    return STREAM_OK;
                }
            }
        }
        return STREAM_ERROR;
    }
    case 137: {
        const struct meta_dl *meta = bd_get_meta(b->bd);
        if (!meta || !meta->di_name || !meta->di_name[0])
            break;
        *(char**)arg = talloc_strdup(((void*)0), meta->di_name);
        return STREAM_OK;
    }
    default:
        break;
    }

    return STREAM_UNSUPPORTED;
}
