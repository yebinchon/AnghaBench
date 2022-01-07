
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int pending_renames; int chart_id; int hash_chart; int chart_title; scalar_t__ enabled; int id; } ;
typedef int pid_t ;
typedef int FILE ;


 int CGROUP_CHARTID_LINE_MAX ;
 int D_CGROUP ;
 int cgroup_chart_id_strdupz (char*) ;
 int cgroup_title_strdupz (char*) ;
 int cgroups_rename_script ;
 int debug (int ,char*,char*,...) ;
 int error (char*,char*) ;
 char* fgets (char*,int ,int *) ;
 int freez (int ) ;
 scalar_t__ likely (int) ;
 int mypclose (int *,int ) ;
 int * mypopen (char*,int *) ;
 int simple_hash (int ) ;
 int snprintfz (char*,int ,char*,int ,int ) ;
 char* trim (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void cgroup_get_chart_name(struct cgroup *cg) {
    debug(D_CGROUP, "looking for the name of cgroup '%s' with chart id '%s' and title '%s'", cg->id, cg->chart_id, cg->chart_title);

    pid_t cgroup_pid;
    char command[CGROUP_CHARTID_LINE_MAX + 1];

    snprintfz(command, CGROUP_CHARTID_LINE_MAX, "exec %s '%s'", cgroups_rename_script, cg->chart_id);

    debug(D_CGROUP, "executing command \"%s\" for cgroup '%s'", command, cg->chart_id);
    FILE *fp = mypopen(command, &cgroup_pid);
    if(fp) {

        char buffer[CGROUP_CHARTID_LINE_MAX + 1];
        char *s = fgets(buffer, CGROUP_CHARTID_LINE_MAX, fp);

        int name_error = mypclose(fp, cgroup_pid);


        if(s && *s && *s != '\n') {
            debug(D_CGROUP, "cgroup '%s' should be renamed to '%s'", cg->chart_id, s);

            s = trim(s);
            if (s) {
                if(likely(name_error==0))
                    cg->pending_renames = 0;
                else if (unlikely(name_error==3)) {
                    debug(D_CGROUP, "cgroup '%s' disabled based due to rename command output", cg->chart_id);
                    cg->enabled = 0;
                }

                if(likely(cg->pending_renames < 2)) {
                    freez(cg->chart_title);
                    cg->chart_title = cgroup_title_strdupz(s);

                    freez(cg->chart_id);
                    cg->chart_id = cgroup_chart_id_strdupz(s);
                    cg->hash_chart = simple_hash(cg->chart_id);
                }
            }
        }
    }
    else
        error("CGROUP: cannot popen(\"%s\", \"r\").", command);
}
