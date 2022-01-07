
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct playlist_entry {int num_redirects; char** redirects; int filename; } ;
struct demuxer {scalar_t__ partially_seekable; int seekable; } ;
struct MPContext {char** resume_defaults; int cached_watch_later_configdir; int global; struct demuxer* demuxer; struct playlist_entry* playing; } ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ bstr ;
typedef int FILE ;


 int MP_INFO (struct MPContext*,char*) ;
 double MP_NOPTS_VALUE ;
 int M_PROPERTY_GET_STRING ;
 int M_PROPERTY_OK ;
 char** backup_properties ;
 int bstr0 (char*) ;
 scalar_t__ bstr_equals0 (TYPE_1__,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 double get_current_time (struct MPContext*) ;
 TYPE_1__ mp_dirname (char*) ;
 char* mp_get_playback_resume_config_filename (struct MPContext*,int ) ;
 int mp_is_url (int ) ;
 int mp_mk_config_dir (int ,int ) ;
 int mp_path_strip_trailing_separator (char*) ;
 int mp_property_do (char const*,int ,char**,struct MPContext*) ;
 scalar_t__ needs_config_quoting (char*) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int talloc_free (char*) ;
 int write_filename (struct MPContext*,int *,int ) ;
 int write_redirect (struct MPContext*,char*) ;

void mp_write_watch_later_conf(struct MPContext *mpctx)
{
    struct playlist_entry *cur = mpctx->playing;
    char *conffile = ((void*)0);
    if (!cur)
        goto exit;

    struct demuxer *demux = mpctx->demuxer;
    if (demux && (!demux->seekable || demux->partially_seekable)) {
        MP_INFO(mpctx, "Not seekable - not saving state.\n");
        goto exit;
    }

    conffile = mp_get_playback_resume_config_filename(mpctx, cur->filename);
    if (!conffile)
        goto exit;

    mp_mk_config_dir(mpctx->global, mpctx->cached_watch_later_configdir);

    MP_INFO(mpctx, "Saving state.\n");

    FILE *file = fopen(conffile, "wb");
    if (!file)
        goto exit;

    write_filename(mpctx, file, cur->filename);

    double pos = get_current_time(mpctx);
    if (pos != MP_NOPTS_VALUE)
        fprintf(file, "start=%f\n", pos);
    for (int i = 0; backup_properties[i]; i++) {
        const char *pname = backup_properties[i];
        char *val = ((void*)0);
        int r = mp_property_do(pname, M_PROPERTY_GET_STRING, &val, mpctx);
        if (r == M_PROPERTY_OK) {
            if (strncmp(pname, "options/", 8) == 0)
                pname += 8;

            char *prev = mpctx->resume_defaults[i];
            if (!prev || strcmp(prev, val) != 0) {
                if (needs_config_quoting(val)) {

                    fprintf(file, "%s=%%%d%%%s\n", pname, (int)strlen(val), val);
                } else {
                    fprintf(file, "%s=%s\n", pname, val);
                }
            }
        }
        talloc_free(val);
    }
    fclose(file);
    for (int n = 0; n < cur->num_redirects; n++)
        write_redirect(mpctx, cur->redirects[n]);



    if (cur->num_redirects) {
        char *path = cur->redirects[0];
        char tmp[4096];
        if (!mp_is_url(bstr0(path)) && strlen(path) < sizeof(tmp)) {
            snprintf(tmp, sizeof(tmp), "%s", path);
            for (;;) {
                bstr dir = mp_dirname(tmp);
                if (dir.len == strlen(tmp) || !dir.len || bstr_equals0(dir, "."))
                    break;

                tmp[dir.len] = '\0';
                if (strlen(tmp) >= 2)
                    mp_path_strip_trailing_separator(tmp);
                write_redirect(mpctx, tmp);
            }
        }
    }

exit:
    talloc_free(conffile);
}
