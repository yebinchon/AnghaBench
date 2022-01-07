
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct TYPE_18__ {TYPE_4__* priv; struct mpv_global* global; struct mp_log* log; } ;
typedef TYPE_2__ stream_t ;
typedef int filename ;
struct TYPE_19__ {int switching_channel; int stream_used; int fe_fd; int dvr_fd; int adapters_count; TYPE_6__* adapters; scalar_t__ is_on; } ;
typedef TYPE_3__ dvb_state_t ;
struct TYPE_20__ {TYPE_1__* opts; } ;
typedef TYPE_4__ dvb_priv_t ;
typedef TYPE_3__ dvb_channels_list_t ;
struct TYPE_21__ {unsigned int devno; TYPE_3__* list; int delsys_mask; } ;
typedef TYPE_6__ dvb_adapter_config_t ;
struct TYPE_17__ {char* cfg_file; int cfg_full_transponder; } ;


 scalar_t__ DELSYS_IS_SET (unsigned int,int) ;
 unsigned int DELSYS_SUPP_MASK ;
 unsigned int MAX_ADAPTERS ;
 int MAX_FRONTENDS ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int PATH_MAX ;







 unsigned int SYS_DVB__COUNT__ ;
 int close (int) ;
 TYPE_3__* dvb_get_channels (struct mp_log*,TYPE_3__*,int ,char*,unsigned int,unsigned int,unsigned int) ;
 unsigned int dvb_get_tuner_delsys_mask (int,struct mp_log*) ;
 int free (TYPE_3__*) ;
 TYPE_3__* global_dvb_state ;
 TYPE_3__* malloc (int) ;
 int memcpy (int *,unsigned int**,int) ;
 int memset (TYPE_3__*,int,int) ;
 int mp_err (struct mp_log*,char*,unsigned int) ;
 char* mp_find_config_file (void*,struct mpv_global*,char const*) ;
 int mp_verbose (struct mp_log*,char*,...) ;
 int open (char*,int) ;
 TYPE_6__* realloc (TYPE_6__*,unsigned int) ;
 int snprintf (char*,int,char*,unsigned int,unsigned int) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

dvb_state_t *dvb_get_state(stream_t *stream)
{
    if (global_dvb_state != ((void*)0)) {
      return global_dvb_state;
    }
    struct mp_log *log = stream->log;
    struct mpv_global *global = stream->global;
    dvb_priv_t *priv = stream->priv;
    unsigned int delsys, delsys_mask[MAX_FRONTENDS], size;
    char filename[PATH_MAX], *conf_file;
    const char *conf_file_name;
    void *talloc_ctx;
    dvb_channels_list_t *list;
    dvb_adapter_config_t *adapters = ((void*)0), *tmp;
    dvb_state_t *state = ((void*)0);

    state = malloc(sizeof(dvb_state_t));
    if (state == ((void*)0))
        return ((void*)0);
    memset(state, 0x00, sizeof(dvb_state_t));
    state->switching_channel = 0;
    state->is_on = 0;
    state->stream_used = 1;
    state->fe_fd = state->dvr_fd = -1;
    for (unsigned int i = 0; i < MAX_ADAPTERS; i++) {
        list = ((void*)0);
        for (unsigned int f = 0; f < MAX_FRONTENDS; f++) {
            snprintf(filename, sizeof(filename), "/dev/dvb/adapter%u/frontend%u", i, f);
            int fd = open(filename, O_RDONLY | O_NONBLOCK | O_CLOEXEC);
            if (fd < 0)
                continue;

            mp_verbose(log, "Opened device %s, FD: %d\n", filename, fd);
            delsys_mask[f] = dvb_get_tuner_delsys_mask(fd, log);
            delsys_mask[f] &= DELSYS_SUPP_MASK;
            close(fd);
            if (delsys_mask[f] == 0) {
                mp_verbose(log, "Frontend device %s has no supported delivery systems.\n",
                       filename);
                continue;
            }
            mp_verbose(log, "Frontend device %s offers some supported delivery systems.\n",
                   filename);

            for (delsys = 0; delsys < SYS_DVB__COUNT__; delsys++) {
                if (!DELSYS_IS_SET(delsys_mask[f], delsys))
                    continue;

                switch (delsys) {
                case 133:
                case 132:
                    conf_file_name = "channels.conf.cbl";
                    break;
                case 134:
                    conf_file_name = "channels.conf.atsc";
                    break;
                case 129:
                    if (DELSYS_IS_SET(delsys_mask[f], 128))
                        continue;

                case 128:
                    conf_file_name = "channels.conf.ter";
                    break;
                case 131:
                    if (DELSYS_IS_SET(delsys_mask[f], 130))
                        continue;

                case 130:
                    conf_file_name = "channels.conf.sat";
                    break;
                default:
                    continue;
                }

                if (priv->opts->cfg_file && priv->opts->cfg_file[0]) {
                    talloc_ctx = ((void*)0);
                    conf_file = priv->opts->cfg_file;
                } else {
                    talloc_ctx = talloc_new(((void*)0));
                    conf_file = mp_find_config_file(talloc_ctx, global, conf_file_name);
                    if (conf_file) {
                        mp_verbose(log, "Ignoring other channels.conf files.\n");
                    } else {
                        conf_file = mp_find_config_file(talloc_ctx, global,
                                        "channels.conf");
                    }
                }

                list = dvb_get_channels(log, list, priv->opts->cfg_full_transponder,
                                        conf_file, f, delsys, delsys_mask[f]);
                talloc_free(talloc_ctx);
            }
        }

        if (list == ((void*)0))
            continue;

        size = sizeof(dvb_adapter_config_t) * (state->adapters_count + 1);
        tmp = realloc(state->adapters, size);

        if (tmp == ((void*)0)) {
            mp_err(log, "DVB_CONFIG, can't realloc %d bytes, skipping\n",
                   size);
            free(list);
            continue;
        }
        adapters = tmp;

        state->adapters = adapters;
        state->adapters[state->adapters_count].devno = i;
        memcpy(&state->adapters[state->adapters_count].delsys_mask,
            &delsys_mask, (sizeof(unsigned int) * MAX_FRONTENDS));
        state->adapters[state->adapters_count].list = list;
        state->adapters_count++;
    }

    if (state->adapters_count == 0) {
        free(state);
        state = ((void*)0);
    }

    global_dvb_state = state;
    return state;
}
