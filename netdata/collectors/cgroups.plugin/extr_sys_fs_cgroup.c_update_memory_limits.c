
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int options; int id; int st_mem_usage; } ;
typedef int calculated_number ;
typedef int RRDSETVAR ;


 int CGROUP_OPTIONS_IS_UNIFIED ;
 unsigned long long UINT64_MAX ;
 int error (char*,int ,char const*) ;
 int freez (char*) ;
 int read_file (char*,char*,int) ;
 scalar_t__ read_single_number_file (char*,unsigned long long*) ;
 int * rrdsetvar_custom_chart_variable_create (int ,char const*) ;
 int rrdsetvar_custom_chart_variable_set (int *,int ) ;
 unsigned long long str2ull (char*) ;
 scalar_t__ strsame (char*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int update_memory_limits(char **filename, RRDSETVAR **chart_var, unsigned long long *value, const char *chart_var_name, struct cgroup *cg) {
    if(*filename) {
        if(unlikely(!*chart_var)) {
            *chart_var = rrdsetvar_custom_chart_variable_create(cg->st_mem_usage, chart_var_name);
            if(!*chart_var) {
                error("Cannot create cgroup %s chart variable '%s'. Will not update its limit anymore.", cg->id, chart_var_name);
                freez(*filename);
                *filename = ((void*)0);
            }
        }

        if(*filename && *chart_var) {
            if(!(cg->options & CGROUP_OPTIONS_IS_UNIFIED)) {
                if(read_single_number_file(*filename, value)) {
                    error("Cannot refresh cgroup %s memory limit by reading '%s'. Will not update its limit anymore.", cg->id, *filename);
                    freez(*filename);
                    *filename = ((void*)0);
                }
                else {
                    rrdsetvar_custom_chart_variable_set(*chart_var, (calculated_number)(*value / (1024 * 1024)));
                    return 1;
                }
            } else {
                char buffer[30 + 1];
                int ret = read_file(*filename, buffer, 30);
                if(ret) {
                    error("Cannot refresh cgroup %s memory limit by reading '%s'. Will not update its limit anymore.", cg->id, *filename);
                    freez(*filename);
                    *filename = ((void*)0);
                    return 0;
                }
                char *s = "max\n\0";
                if(strsame(s, buffer) == 0){
                    *value = UINT64_MAX;
                    rrdsetvar_custom_chart_variable_set(*chart_var, (calculated_number)(*value / (1024 * 1024)));
                    return 1;
                }
                *value = str2ull(buffer);
                rrdsetvar_custom_chart_variable_set(*chart_var, (calculated_number)(*value / (1024 * 1024)));
                return 1;
            }
        }
    }
    return 0;
}
