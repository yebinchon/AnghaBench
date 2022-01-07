
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {char const* id; char const* chart_id; scalar_t__ hash_chart; int options; int pending_renames; int enabled; void* chart_title; struct cgroup* next; void* hash; } ;


 int CGROUP_CHARTID_LINE_MAX ;
 int CGROUP_OPTIONS_DISABLED_DUPLICATE ;
 int CGROUP_OPTIONS_IS_UNIFIED ;
 int CGROUP_OPTIONS_SYSTEM_SLICE_SERVICE ;
 int D_CGROUP ;
 int FILENAME_MAX ;
 struct cgroup* callocz (int,int) ;
 char const* cgroup_chart_id_strdupz (char const*) ;
 int cgroup_enable_new_cgroups_detected_at_runtime ;
 scalar_t__ cgroup_enable_systemd_services ;
 int cgroup_get_chart_name (struct cgroup*) ;
 struct cgroup* cgroup_root ;
 scalar_t__ cgroup_root_count ;
 scalar_t__ cgroup_root_max ;
 void* cgroup_title_strdupz (char const*) ;
 scalar_t__ cgroup_use_unified_cgroups ;
 scalar_t__ config_get_boolean (char*,char*,int) ;
 int debug (int ,char*,char const*,...) ;
 int enabled_cgroup_patterns ;
 int enabled_cgroup_renames ;
 int error (char*,char const*,char const*,char const*,...) ;
 int freez (void*) ;
 int info (char*,scalar_t__,char const*) ;
 int read_cgroup_network_interfaces (struct cgroup*) ;
 void* simple_hash (char const*) ;
 scalar_t__ simple_pattern_matches (int ,char const*) ;
 int snprintfz (char*,int ,char*,void*) ;
 int strcmp (char const*,char const*) ;
 char const* strdupz (char const*) ;
 size_t strlen (char*) ;
 int strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,int ) ;
 int systemd_services_cgroups ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct cgroup *cgroup_add(const char *id) {
    if(!id || !*id) id = "/";
    debug(D_CGROUP, "adding to list, cgroup with id '%s'", id);

    if(cgroup_root_count >= cgroup_root_max) {
        info("CGROUP: maximum number of cgroups reached (%d). Not adding cgroup '%s'", cgroup_root_count, id);
        return ((void*)0);
    }

    int def = simple_pattern_matches(enabled_cgroup_patterns, id)?cgroup_enable_new_cgroups_detected_at_runtime:0;
    struct cgroup *cg = callocz(1, sizeof(struct cgroup));

    cg->id = strdupz(id);
    cg->hash = simple_hash(cg->id);

    cg->chart_title = cgroup_title_strdupz(id);

    cg->chart_id = cgroup_chart_id_strdupz(id);
    cg->hash_chart = simple_hash(cg->chart_id);

    if(cgroup_use_unified_cgroups) cg->options |= CGROUP_OPTIONS_IS_UNIFIED;

    if(!cgroup_root)
        cgroup_root = cg;
    else {

        struct cgroup *e;
        for(e = cgroup_root; e->next ;e = e->next) ;
        e->next = cg;
    }

    cgroup_root_count++;


    if(simple_pattern_matches(enabled_cgroup_renames, cg->id)) {

        cg->pending_renames = 2;
        cgroup_get_chart_name(cg);

        debug(D_CGROUP, "cgroup '%s' renamed to '%s' (title: '%s')", cg->id, cg->chart_id, cg->chart_title);
    }
    else
        debug(D_CGROUP, "cgroup '%s' will not be renamed - it matches the list of disabled cgroup renames (will be shown as '%s')", cg->id, cg->chart_id);

    int user_configurable = 1;


    if(cgroup_enable_systemd_services) {
        if(simple_pattern_matches(systemd_services_cgroups, cg->id) ||
                simple_pattern_matches(systemd_services_cgroups, cg->chart_id)) {
            debug(D_CGROUP, "cgroup '%s' with chart id '%s' (title: '%s') matches systemd services cgroups", cg->id, cg->chart_id, cg->chart_title);

            char buffer[CGROUP_CHARTID_LINE_MAX + 1];
            cg->options |= CGROUP_OPTIONS_SYSTEM_SLICE_SERVICE;

            strncpy(buffer, cg->id, CGROUP_CHARTID_LINE_MAX);
            char *s = buffer;






            size_t len = strlen(s);
            while(len--) if(unlikely(s[len] == '/')) break;
            if(len) s = &s[len + 1];


            len = strlen(s);
            while(len--) if(unlikely(s[len] == '.')) break;
            if(len) s[len] = '\0';

            freez(cg->chart_title);
            cg->chart_title = cgroup_title_strdupz(s);

            cg->enabled = 1;
            user_configurable = 0;

            debug(D_CGROUP, "cgroup '%s' renamed to '%s' (title: '%s')", cg->id, cg->chart_id, cg->chart_title);
        }
        else
            debug(D_CGROUP, "cgroup '%s' with chart id '%s' (title: '%s') does not match systemd services groups", cg->id, cg->chart_id, cg->chart_title);
    }

    if(user_configurable) {

        char option[FILENAME_MAX + 1];
        snprintfz(option, FILENAME_MAX, "enable cgroup %s", cg->chart_title);
        cg->enabled = (char) config_get_boolean("plugin:cgroups", option, def);
    }


    if(cg->enabled) {
        struct cgroup *t;
        for (t = cgroup_root; t; t = t->next) {
            if (t != cg && t->enabled && t->hash_chart == cg->hash_chart && !strcmp(t->chart_id, cg->chart_id)) {
                if (!strncmp(t->chart_id, "/system.slice/", 14) && !strncmp(cg->chart_id, "/init.scope/system.slice/", 25)) {
                    error("CGROUP: chart id '%s' already exists with id '%s' and is enabled. Swapping them by enabling cgroup with id '%s' and disabling cgroup with id '%s'.",
                          cg->chart_id, t->id, cg->id, t->id);
                    debug(D_CGROUP, "Control group with chart id '%s' already exists with id '%s' and is enabled. Swapping them by enabling cgroup with id '%s' and disabling cgroup with id '%s'.",
                          cg->chart_id, t->id, cg->id, t->id);
                    t->enabled = 0;
                    t->options |= CGROUP_OPTIONS_DISABLED_DUPLICATE;
                }
                else {
                    error("CGROUP: chart id '%s' already exists with id '%s' and is enabled and available. Disabling cgroup with id '%s'.",
                          cg->chart_id, t->id, cg->id);
                    debug(D_CGROUP, "Control group with chart id '%s' already exists with id '%s' and is enabled and available. Disabling cgroup with id '%s'.",
                          cg->chart_id, t->id, cg->id);
                    cg->enabled = 0;
                    cg->options |= CGROUP_OPTIONS_DISABLED_DUPLICATE;
                }

                break;
            }
        }
    }

    if(cg->enabled && !cg->pending_renames && !(cg->options & CGROUP_OPTIONS_SYSTEM_SLICE_SERVICE))
        read_cgroup_network_interfaces(cg);

    debug(D_CGROUP, "ADDED CGROUP: '%s' with chart id '%s' and title '%s' as %s (default was %s)", cg->id, cg->chart_id, cg->chart_title, (cg->enabled)?"enabled":"disabled", (def)?"enabled":"disabled");

    return cg;
}
