
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {unsigned long long cpuset_cpus; unsigned long long cpu_cfs_period; unsigned long long cpu_cfs_quota; int id; } ;


 unsigned long long cpuset_str2ull (char**) ;
 int error (char*,int ,char*) ;
 int freez (char*) ;
 int get_system_cpus () ;
 scalar_t__ likely (unsigned long long) ;
 char* mallocz (size_t) ;
 int read_file (char*,char*,size_t) ;
 int read_single_number_file (char*,unsigned long long*) ;

__attribute__((used)) static inline void update_cpu_limits(char **filename, unsigned long long *value, struct cgroup *cg) {
    if(*filename) {
        int ret = -1;

        if(value == &cg->cpuset_cpus) {
            static char *buf = ((void*)0);
            static size_t buf_size = 0;

            if(!buf) {
                buf_size = 100U + 6 * get_system_cpus();
                buf = mallocz(buf_size + 1);
            }

            ret = read_file(*filename, buf, buf_size);

            if(!ret) {
                char *s = buf;
                unsigned long long ncpus = 0;


                while(*s) {
                    unsigned long long n = cpuset_str2ull(&s);
                    if(*s == ',') {
                        s++;
                        ncpus++;
                        continue;
                    }
                    if(*s == '-') {
                        s++;
                        unsigned long long m = cpuset_str2ull(&s);
                        ncpus += m - n + 1;
                    }
                    s++;
                }

                if(likely(ncpus)) *value = ncpus;
            }
        }
        else if(value == &cg->cpu_cfs_period) {
            ret = read_single_number_file(*filename, value);
        }
        else if(value == &cg->cpu_cfs_quota) {
            ret = read_single_number_file(*filename, value);
        }
        else ret = -1;

        if(ret) {
            error("Cannot refresh cgroup %s cpu limit by reading '%s'. Will not update its limit anymore.", cg->id, *filename);
            freez(*filename);
            *filename = ((void*)0);
        }
    }
}
