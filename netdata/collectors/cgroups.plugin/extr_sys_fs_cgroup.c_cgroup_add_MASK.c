#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cgroup {char const* id; char const* chart_id; scalar_t__ hash_chart; int options; int pending_renames; int enabled; void* chart_title; struct cgroup* next; void* hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGROUP_CHARTID_LINE_MAX ; 
 int CGROUP_OPTIONS_DISABLED_DUPLICATE ; 
 int CGROUP_OPTIONS_IS_UNIFIED ; 
 int CGROUP_OPTIONS_SYSTEM_SLICE_SERVICE ; 
 int /*<<< orphan*/  D_CGROUP ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 struct cgroup* FUNC0 (int,int) ; 
 char const* FUNC1 (char const*) ; 
 int cgroup_enable_new_cgroups_detected_at_runtime ; 
 scalar_t__ cgroup_enable_systemd_services ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*) ; 
 struct cgroup* cgroup_root ; 
 scalar_t__ cgroup_root_count ; 
 scalar_t__ cgroup_root_max ; 
 void* FUNC3 (char const*) ; 
 scalar_t__ cgroup_use_unified_cgroups ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  enabled_cgroup_patterns ; 
 int /*<<< orphan*/  enabled_cgroup_renames ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct cgroup*) ; 
 void* FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*) ; 
 char const* FUNC14 (char const*) ; 
 size_t FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  systemd_services_cgroups ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static inline struct cgroup *FUNC19(const char *id) {
    if(!id || !*id) id = "/";
    FUNC5(D_CGROUP, "adding to list, cgroup with id '%s'", id);

    if(cgroup_root_count >= cgroup_root_max) {
        FUNC8("CGROUP: maximum number of cgroups reached (%d). Not adding cgroup '%s'", cgroup_root_count, id);
        return NULL;
    }

    int def = FUNC11(enabled_cgroup_patterns, id)?cgroup_enable_new_cgroups_detected_at_runtime:0;
    struct cgroup *cg = FUNC0(1, sizeof(struct cgroup));

    cg->id = FUNC14(id);
    cg->hash = FUNC10(cg->id);

    cg->chart_title = FUNC3(id);

    cg->chart_id = FUNC1(id);
    cg->hash_chart = FUNC10(cg->chart_id);

    if(cgroup_use_unified_cgroups) cg->options |= CGROUP_OPTIONS_IS_UNIFIED;

    if(!cgroup_root)
        cgroup_root = cg;
    else {
        // append it
        struct cgroup *e;
        for(e = cgroup_root; e->next ;e = e->next) ;
        e->next = cg;
    }

    cgroup_root_count++;

    // fix the chart_id and title by calling the external script
    if(FUNC11(enabled_cgroup_renames, cg->id)) {

        cg->pending_renames = 2;
        FUNC2(cg);

        FUNC5(D_CGROUP, "cgroup '%s' renamed to '%s' (title: '%s')", cg->id, cg->chart_id, cg->chart_title);
    }
    else
        FUNC5(D_CGROUP, "cgroup '%s' will not be renamed - it matches the list of disabled cgroup renames (will be shown as '%s')", cg->id, cg->chart_id);

    int user_configurable = 1;

    // check if this cgroup should be a systemd service
    if(cgroup_enable_systemd_services) {
        if(FUNC11(systemd_services_cgroups, cg->id) ||
                FUNC11(systemd_services_cgroups, cg->chart_id)) {
            FUNC5(D_CGROUP, "cgroup '%s' with chart id '%s' (title: '%s') matches systemd services cgroups", cg->id, cg->chart_id, cg->chart_title);

            char buffer[CGROUP_CHARTID_LINE_MAX + 1];
            cg->options |= CGROUP_OPTIONS_SYSTEM_SLICE_SERVICE;

            FUNC17(buffer, cg->id, CGROUP_CHARTID_LINE_MAX);
            char *s = buffer;

            //freez(cg->chart_id);
            //cg->chart_id = cgroup_chart_id_strdupz(s);
            //cg->hash_chart = simple_hash(cg->chart_id);

            // skip to the last slash
            size_t len = FUNC15(s);
            while(len--) if(FUNC18(s[len] == '/')) break;
            if(len) s = &s[len + 1];

            // remove extension
            len = FUNC15(s);
            while(len--) if(FUNC18(s[len] == '.')) break;
            if(len) s[len] = '\0';

            FUNC7(cg->chart_title);
            cg->chart_title = FUNC3(s);

            cg->enabled = 1;
            user_configurable = 0;

            FUNC5(D_CGROUP, "cgroup '%s' renamed to '%s' (title: '%s')", cg->id, cg->chart_id, cg->chart_title);
        }
        else
            FUNC5(D_CGROUP, "cgroup '%s' with chart id '%s' (title: '%s') does not match systemd services groups", cg->id, cg->chart_id, cg->chart_title);
    }

    if(user_configurable) {
        // allow the user to enable/disable this individualy
        char option[FILENAME_MAX + 1];
        FUNC12(option, FILENAME_MAX, "enable cgroup %s", cg->chart_title);
        cg->enabled = (char) FUNC4("plugin:cgroups", option, def);
    }

    // detect duplicate cgroups
    if(cg->enabled) {
        struct cgroup *t;
        for (t = cgroup_root; t; t = t->next) {
            if (t != cg && t->enabled && t->hash_chart == cg->hash_chart && !FUNC13(t->chart_id, cg->chart_id)) {
                if (!FUNC16(t->chart_id, "/system.slice/", 14) && !FUNC16(cg->chart_id, "/init.scope/system.slice/", 25)) {
                    FUNC6("CGROUP: chart id '%s' already exists with id '%s' and is enabled. Swapping them by enabling cgroup with id '%s' and disabling cgroup with id '%s'.",
                          cg->chart_id, t->id, cg->id, t->id);
                    FUNC5(D_CGROUP, "Control group with chart id '%s' already exists with id '%s' and is enabled. Swapping them by enabling cgroup with id '%s' and disabling cgroup with id '%s'.",
                          cg->chart_id, t->id, cg->id, t->id);
                    t->enabled = 0;
                    t->options |= CGROUP_OPTIONS_DISABLED_DUPLICATE;
                }
                else {
                    FUNC6("CGROUP: chart id '%s' already exists with id '%s' and is enabled and available. Disabling cgroup with id '%s'.",
                          cg->chart_id, t->id, cg->id);
                    FUNC5(D_CGROUP, "Control group with chart id '%s' already exists with id '%s' and is enabled and available. Disabling cgroup with id '%s'.",
                          cg->chart_id, t->id, cg->id);
                    cg->enabled = 0;
                    cg->options |= CGROUP_OPTIONS_DISABLED_DUPLICATE;
                }

                break;
            }
        }
    }

    if(cg->enabled && !cg->pending_renames && !(cg->options & CGROUP_OPTIONS_SYSTEM_SLICE_SERVICE))
        FUNC9(cg);

    FUNC5(D_CGROUP, "ADDED CGROUP: '%s' with chart id '%s' and title '%s' as %s (default was %s)", cg->id, cg->chart_id, cg->chart_title, (cg->enabled)?"enabled":"disabled", (def)?"enabled":"disabled");

    return cg;
}