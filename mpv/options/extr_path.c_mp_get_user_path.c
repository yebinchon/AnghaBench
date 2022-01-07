
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int type ;
struct mpv_global {int dummy; } ;
struct TYPE_11__ {char* start; } ;
typedef TYPE_1__ bstr ;


 char* BSTR_P (TYPE_1__) ;
 int MP_DBG (struct mpv_global*,char*,char const*,char*) ;
 TYPE_1__ bstr0 (char const*) ;
 scalar_t__ bstr_eatstart0 (TYPE_1__*,char*) ;
 scalar_t__ bstr_equals0 (TYPE_1__,char*) ;
 scalar_t__ bstr_split_tok (TYPE_1__,char*,TYPE_1__*,TYPE_1__*) ;
 char* getenv (char*) ;
 char* mp_find_config_file (void*,struct mpv_global*,char const*) ;
 char* mp_get_platform_path (void*,struct mpv_global*,char*) ;
 char* mp_path_join_bstr (void*,TYPE_1__,TYPE_1__) ;
 int snprintf (char*,int,char*,char*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 char* talloc_strdup (void*,char const*) ;

char *mp_get_user_path(void *talloc_ctx, struct mpv_global *global,
                       const char *path)
{
    if (!path)
        return ((void*)0);
    char *res = ((void*)0);
    bstr bpath = bstr0(path);
    if (bstr_eatstart0(&bpath, "~")) {

        bstr prefix, rest;
        if (bstr_split_tok(bpath, "/", &prefix, &rest)) {
            const char *rest0 = rest.start;
            if (bstr_equals0(prefix, "~")) {
                res = mp_find_config_file(talloc_ctx, global, rest0);
                if (!res) {
                    void *tmp = talloc_new(((void*)0));
                    const char *p = mp_get_platform_path(tmp, global, "home");
                    res = mp_path_join_bstr(talloc_ctx, bstr0(p), rest);
                    talloc_free(tmp);
                }
            } else if (bstr_equals0(prefix, "")) {
                char *home = getenv("HOME");
                if (!home)
                    home = getenv("USERPROFILE");
                res = mp_path_join_bstr(talloc_ctx, bstr0(home), rest);
            } else if (bstr_eatstart0(&prefix, "~")) {
                void *tmp = talloc_new(((void*)0));
                char type[80];
                snprintf(type, sizeof(type), "%.*s", BSTR_P(prefix));
                const char *p = mp_get_platform_path(tmp, global, type);
                res = mp_path_join_bstr(talloc_ctx, bstr0(p), rest);
                talloc_free(tmp);
            }
        }
    }
    if (!res)
        res = talloc_strdup(talloc_ctx, path);
    MP_DBG(global, "user path: '%s' -> '%s'\n", path, res);
    return res;
}
