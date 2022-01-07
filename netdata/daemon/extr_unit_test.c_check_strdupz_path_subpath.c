
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int freez (char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdupz_path_subpath (char const*,char const*) ;

int check_strdupz_path_subpath() {

    struct strdupz_path_subpath_checks {
        const char *path;
        const char *subpath;
        const char *result;
    } checks[] = {
            { "", "", "." },
            { "/", "", "/" },
            { "/etc/netdata", "", "/etc/netdata" },
            { "/etc/netdata///", "", "/etc/netdata" },
            { "/etc/netdata///", "health.d", "/etc/netdata/health.d" },
            { "/etc/netdata///", "///health.d", "/etc/netdata/health.d" },
            { "/etc/netdata", "///health.d", "/etc/netdata/health.d" },
            { "", "///health.d", "./health.d" },
            { "/", "///health.d", "/health.d" },


            { ((void*)0), ((void*)0), ((void*)0) }
    };

    size_t i;
    for(i = 0; checks[i].result ; i++) {
        char *s = strdupz_path_subpath(checks[i].path, checks[i].subpath);
        fprintf(stderr, "strdupz_path_subpath(\"%s\", \"%s\") = \"%s\": ", checks[i].path, checks[i].subpath, s);
        if(!s || strcmp(s, checks[i].result) != 0) {
            freez(s);
            fprintf(stderr, "FAILED\n");
            return 1;
        }
        else {
            freez(s);
            fprintf(stderr, "OK\n");
        }
    }

    return 0;
}
