
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rrd_memory_mode; int cache_dir; } ;
typedef TYPE_1__ RRDHOST ;


 scalar_t__ EEXIST ;
 int FILENAME_MAX ;
 scalar_t__ RRD_MEMORY_MODE_MAP ;
 scalar_t__ RRD_MEMORY_MODE_SAVE ;
 char* config_get (char const*,char*,char*) ;
 scalar_t__ errno ;
 int error (char*,char*) ;
 int mkdir (char*,int) ;
 int rrdset_strncpyz_name (char*,char const*,int ) ;
 int snprintfz (char*,int ,char*,int ,char*) ;

char *rrdset_cache_dir(RRDHOST *host, const char *id, const char *config_section) {
    char *ret = ((void*)0);

    char b[FILENAME_MAX + 1];
    char n[FILENAME_MAX + 1];
    rrdset_strncpyz_name(b, id, FILENAME_MAX);

    snprintfz(n, FILENAME_MAX, "%s/%s", host->cache_dir, b);
    ret = config_get(config_section, "cache directory", n);

    if(host->rrd_memory_mode == RRD_MEMORY_MODE_MAP || host->rrd_memory_mode == RRD_MEMORY_MODE_SAVE) {
        int r = mkdir(ret, 0775);
        if(r != 0 && errno != EEXIST)
            error("Cannot create directory '%s'", ret);
    }

    return ret;
}
