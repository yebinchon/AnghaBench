
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup_network_interface {void* container_device; void* host_device; struct cgroup_network_interface* next; } ;
struct cgroup {int options; int chart_id; int id; struct cgroup_network_interface* interfaces; int chart_title; } ;
typedef int pid_t ;
typedef int FILE ;


 int CGROUP_NETWORK_INTERFACE_MAX_LINE ;
 int CGROUP_OPTIONS_IS_UNIFIED ;
 int D_CGROUP ;
 struct cgroup_network_interface* callocz (int,int) ;
 int cgroup_cpuacct_base ;
 int cgroup_unified_base ;
 int cgroups_network_interface_script ;
 int debug (int ,char*,char*,int ,...) ;
 int error (char*,...) ;
 char* fgets (char*,int ,int *) ;
 int info (char*,int ,void*,void*) ;
 int mypclose (int *,int ) ;
 int * mypopen (char*,int *) ;
 int netdev_rename_device_add (void*,void*,int ) ;
 int snprintfz (char*,int ,char*,int ,int ,int ) ;
 void* strdupz (char*) ;
 int trim (char*) ;

__attribute__((used)) static inline void read_cgroup_network_interfaces(struct cgroup *cg) {
    debug(D_CGROUP, "looking for the network interfaces of cgroup '%s' with chart id '%s' and title '%s'", cg->id, cg->chart_id, cg->chart_title);

    pid_t cgroup_pid;
    char command[CGROUP_NETWORK_INTERFACE_MAX_LINE + 1];

    if(!(cg->options & CGROUP_OPTIONS_IS_UNIFIED)) {
        snprintfz(command, CGROUP_NETWORK_INTERFACE_MAX_LINE, "exec %s --cgroup '%s%s'", cgroups_network_interface_script, cgroup_cpuacct_base, cg->id);
    }
    else {
        snprintfz(command, CGROUP_NETWORK_INTERFACE_MAX_LINE, "exec %s --cgroup '%s%s'", cgroups_network_interface_script, cgroup_unified_base, cg->id);
    }

    debug(D_CGROUP, "executing command '%s' for cgroup '%s'", command, cg->id);
    FILE *fp = mypopen(command, &cgroup_pid);
    if(!fp) {
        error("CGROUP: cannot popen(\"%s\", \"r\").", command);
        return;
    }

    char *s;
    char buffer[CGROUP_NETWORK_INTERFACE_MAX_LINE + 1];
    while((s = fgets(buffer, CGROUP_NETWORK_INTERFACE_MAX_LINE, fp))) {
        trim(s);

        if(*s && *s != '\n') {
            char *t = s;
            while(*t && *t != ' ') t++;
            if(*t == ' ') {
                *t = '\0';
                t++;
            }

            if(!*s) {
                error("CGROUP: empty host interface returned by script");
                continue;
            }

            if(!*t) {
                error("CGROUP: empty guest interface returned by script");
                continue;
            }

            struct cgroup_network_interface *i = callocz(1, sizeof(struct cgroup_network_interface));
            i->host_device = strdupz(s);
            i->container_device = strdupz(t);
            i->next = cg->interfaces;
            cg->interfaces = i;

            info("CGROUP: cgroup '%s' has network interface '%s' as '%s'", cg->id, i->host_device, i->container_device);


            netdev_rename_device_add(i->host_device, i->container_device, cg->chart_id);
        }
    }

    mypclose(fp, cgroup_pid);

}
