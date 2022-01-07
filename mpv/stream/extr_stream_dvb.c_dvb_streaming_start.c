
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {TYPE_5__* priv; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_17__ {size_t cur_adapter; TYPE_1__* adapters; } ;
typedef TYPE_4__ dvb_state_t ;
struct TYPE_18__ {TYPE_2__* opts; int devno; TYPE_4__* state; } ;
typedef TYPE_5__ dvb_priv_t ;
struct TYPE_19__ {int NUM_CHANNELS; int current; TYPE_7__* channels; } ;
typedef TYPE_6__ dvb_channels_list_t ;
struct TYPE_20__ {int freq; int name; } ;
typedef TYPE_7__ dvb_channel_t ;
struct TYPE_15__ {int cfg_channel_switch_offset; } ;
struct TYPE_14__ {TYPE_6__* list; } ;


 int MP_ERR (TYPE_3__*,char*,...) ;
 int MP_INFO (TYPE_3__*,char*,int ) ;
 int MP_VERBOSE (TYPE_3__*,char*,...) ;
 int dvb_set_channel (TYPE_3__*,size_t,size_t) ;
 int dvbin_close (TYPE_3__*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int dvb_streaming_start(stream_t *stream, char *progname)
{
    int i;
    dvb_channel_t *channel = ((void*)0);
    dvb_priv_t *priv = stream->priv;
    dvb_state_t *state = priv->state;
    dvb_channels_list_t *list;

    if (progname == ((void*)0))
        return 0;
    MP_VERBOSE(stream, "\r\ndvb_streaming_start(PROG: %s, ADAPTER: %d)\n",
               progname, priv->devno);

    list = state->adapters[state->cur_adapter].list;
    for (i = 0; i < list->NUM_CHANNELS; i ++) {
        if (!strcmp(list->channels[i].name, progname)) {
            channel = &(list->channels[i]);
            break;
        }
    }

    if (channel == ((void*)0)) {
        MP_ERR(stream, "\n\nDVBIN: no such channel \"%s\"\n\n", progname);
        return 0;
    }

    list->current = i;



    list->current = (list->NUM_CHANNELS + list->current + priv->opts->cfg_channel_switch_offset) % list->NUM_CHANNELS;
    channel = &(list->channels[list->current]);
    MP_INFO(stream, "Tuning to channel \"%s\"...\n", channel->name);
    MP_VERBOSE(stream, "PROGRAM NUMBER %d: name=%s, freq=%u\n", i,
               channel->name, channel->freq);

    if (!dvb_set_channel(stream, state->cur_adapter, list->current)) {
        MP_ERR(stream, "ERROR, COULDN'T SET CHANNEL  %i: \"%s\"\n", list->current, progname);
        dvbin_close(stream);
        return 0;
    }

    MP_VERBOSE(stream, "SUCCESSFUL EXIT from dvb_streaming_start\n");

    return 1;
}
