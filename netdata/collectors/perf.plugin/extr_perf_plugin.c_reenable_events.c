
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_GROUP_NUM ;
 int NO_FD ;
 int PERF_EVENT_IOC_DISABLE ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_IOC_FLAG_GROUP ;
 int error (char*) ;
 int** group_leader_fds ;
 int ioctl (int,int ,int ) ;
 int number_of_cpus ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void reenable_events() {
    int group, cpu;

    for(group = 0; group < EV_GROUP_NUM; group++) {
        for(cpu = 0; cpu < number_of_cpus; cpu++) {
            int current_fd = *(group_leader_fds[group] + cpu);

            if(unlikely(current_fd == NO_FD)) continue;

            if(ioctl(current_fd, PERF_EVENT_IOC_DISABLE, PERF_IOC_FLAG_GROUP) == -1
               || ioctl(current_fd, PERF_EVENT_IOC_ENABLE, PERF_IOC_FLAG_GROUP) == -1)
            {
                error("Cannot reenable event group");
            }
        }
    }
}
