
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
struct bluray_priv_s {char* cfg_device; int num_titles; int current_angle; int current_title; scalar_t__ use_nav; int * bd; } ;
struct TYPE_12__ {char* demuxer; struct bluray_priv_s* priv; int control; int close; int fill_buffer; int log; int global; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_13__ {int duration; int playlist; } ;
typedef TYPE_2__ BLURAY_TITLE_INFO ;
typedef int BLURAY ;


 int BLURAY_DEFAULT_TITLE ;
 int MP_ERR (TYPE_1__*,char*,...) ;
 int MP_FATAL (TYPE_1__*,char*) ;
 int MP_INFO (TYPE_1__*,char*,...) ;
 int MP_VERBOSE (TYPE_1__*,char*) ;
 int MSGL_DEBUG ;
 int STREAM_ERROR ;
 int STREAM_OK ;
 int STREAM_UNSUPPORTED ;
 int TITLES_RELEVANT ;
 int bd_free_title_info (TYPE_2__*) ;
 int bd_get_event (int *,int *) ;
 TYPE_2__* bd_get_title_info (int *,int,int ) ;
 int bd_get_titles (int *,int ,int ) ;
 int * bd_open (char*,int *) ;
 int bd_set_debug_mask (int ) ;
 int bluray_stream_close ;
 int bluray_stream_control ;
 int bluray_stream_fill_buffer ;
 int check_disc_info (TYPE_1__*) ;
 int destruct (struct bluray_priv_s*) ;
 int m_option_type_string ;
 char* mp_format_time (int,int) ;
 int mp_msg_test (int ,int ) ;
 int mp_read_option_raw (int ,char*,int *,char**) ;
 int select_initial_title (TYPE_1__*,int) ;
 int talloc_free (char*) ;

__attribute__((used)) static int bluray_stream_open_internal(stream_t *s)
{
    struct bluray_priv_s *b = s->priv;

    char *device = ((void*)0);

    if (b->cfg_device && b->cfg_device[0]) {
        device = b->cfg_device;
    } else {
        mp_read_option_raw(s->global, "bluray-device", &m_option_type_string,
                           &device);
    }

    if (!device || !device[0]) {
        MP_ERR(s, "No Blu-ray device/location was specified ...\n");
        return STREAM_UNSUPPORTED;
    }

    if (!mp_msg_test(s->log, MSGL_DEBUG))
        bd_set_debug_mask(0);


    BLURAY *bd = bd_open(device, ((void*)0));
    if (!bd) {
        MP_ERR(s, "Couldn't open Blu-ray device: %s\n", device);
        return STREAM_UNSUPPORTED;
    }
    b->bd = bd;

    if (!check_disc_info(s)) {
        destruct(b);
        return STREAM_UNSUPPORTED;
    }

    int title_guess = BLURAY_DEFAULT_TITLE;
    if (b->use_nav) {
        MP_FATAL(s, "BluRay menu support has been removed.\n");
        return STREAM_ERROR;
    } else {

        b->num_titles = bd_get_titles(bd, TITLES_RELEVANT, 0);
        if (!b->num_titles) {
            MP_ERR(s, "Can't find any Blu-ray-compatible title here.\n");
            destruct(b);
            return STREAM_UNSUPPORTED;
        }

        MP_INFO(s, "List of available titles:\n");


        uint64_t max_duration = 0;
        for (int i = 0; i < b->num_titles; i++) {
            BLURAY_TITLE_INFO *ti = bd_get_title_info(bd, i, 0);
            if (!ti)
                continue;

            char *time = mp_format_time(ti->duration / 90000, 0);
            MP_INFO(s, "idx: %3d duration: %s (playlist: %05d.mpls)\n",
                       i, time, ti->playlist);
            talloc_free(time);


            if (ti->duration > max_duration) {
                max_duration = ti->duration;
                title_guess = i;
            }

            bd_free_title_info(ti);
        }
    }


    b->current_angle = -1;
    b->current_title = -1;


    bd_get_event(bd, ((void*)0));

    select_initial_title(s, title_guess);

    s->fill_buffer = bluray_stream_fill_buffer;
    s->close = bluray_stream_close;
    s->control = bluray_stream_control;
    s->priv = b;
    s->demuxer = "+disc";

    MP_VERBOSE(s, "Blu-ray successfully opened.\n");

    return STREAM_OK;
}
