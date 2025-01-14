
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrdhost_system_info {struct rrdhost_system_info* container_detection; struct rrdhost_system_info* container; struct rrdhost_system_info* virt_detection; struct rrdhost_system_info* virtualization; struct rrdhost_system_info* architecture; struct rrdhost_system_info* kernel_version; struct rrdhost_system_info* kernel_name; struct rrdhost_system_info* os_detection; struct rrdhost_system_info* os_version_id; struct rrdhost_system_info* os_version; struct rrdhost_system_info* os_id_like; struct rrdhost_system_info* os_id; struct rrdhost_system_info* os_name; } ;


 int freez (struct rrdhost_system_info*) ;
 int info (char*,struct rrdhost_system_info*) ;
 scalar_t__ likely (struct rrdhost_system_info*) ;

void rrdhost_system_info_free(struct rrdhost_system_info *system_info) {
    info("SYSTEM_INFO: free %p", system_info);

    if(likely(system_info)) {
        freez(system_info->os_name);
        freez(system_info->os_id);
        freez(system_info->os_id_like);
        freez(system_info->os_version);
        freez(system_info->os_version_id);
        freez(system_info->os_detection);
        freez(system_info->kernel_name);
        freez(system_info->kernel_version);
        freez(system_info->architecture);
        freez(system_info->virtualization);
        freez(system_info->virt_detection);
        freez(system_info->container);
        freez(system_info->container_detection);
        freez(system_info);
    }
}
