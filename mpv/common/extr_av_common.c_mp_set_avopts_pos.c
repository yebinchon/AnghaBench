
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
typedef int errstr ;


 int AVERROR_OPTION_NOT_FOUND ;
 int AV_OPT_SEARCH_CHILDREN ;
 int av_opt_set (void*,char*,char*,int ) ;
 int av_strerror (int,char*,int) ;
 int mp_err (struct mp_log*,char*,char*,...) ;
 int resolve_positional_arg (void*,char**) ;

int mp_set_avopts_pos(struct mp_log *log, void *avobj, void *posargs, char **kv)
{
    int success = 0;
    for (int n = 0; kv && kv[n * 2]; n++) {
        char *k = kv[n * 2 + 0];
        char *v = kv[n * 2 + 1];
        resolve_positional_arg(posargs, &k);
        int r = av_opt_set(avobj, k, v, AV_OPT_SEARCH_CHILDREN);
        if (r == AVERROR_OPTION_NOT_FOUND) {
            mp_err(log, "AVOption '%s' not found.\n", k);
            success = -1;
        } else if (r < 0) {
            char errstr[80];
            av_strerror(r, errstr, sizeof(errstr));
            mp_err(log, "Could not set AVOption %s='%s' (%s)\n", k, v, errstr);
            success = -1;
        }
    }
    return success;
}
