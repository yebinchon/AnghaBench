
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct mc {int ce_updated; scalar_t__ ce_count; int ue_updated; scalar_t__ ue_count; void* ue_rd; int name; scalar_t__ ue_count_filename; struct mc* next; void* ce_rd; scalar_t__ ce_count_filename; void* ue_ff; void* ce_ff; } ;
typedef scalar_t__ calculated_number ;
typedef int RRDSET ;


 int CONFIG_BOOLEAN_AUTO ;
 int CONFIG_BOOLEAN_NO ;
 int CONFIG_BOOLEAN_YES ;
 int NETDATA_CHART_PRIO_MEM_HW_ECC_CE ;
 int NETDATA_CHART_PRIO_MEM_HW_ECC_UE ;
 int PLUGIN_PROC_NAME ;
 int PROCFILE_FLAG_DEFAULT ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int config_get_boolean_ondemand (char*,char*,int) ;
 int find_all_mc () ;
 struct mc* mc_root ;
 int netdata_zero_metrics_enabled ;
 int procfile_lines (void*) ;
 int procfile_lineword (void*,int ,int ) ;
 int procfile_linewords (void*,int ) ;
 void* procfile_open (scalar_t__,char*,int ) ;
 void* procfile_readall (void*) ;
 void* rrddim_add (int *,int ,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,void*,scalar_t__) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,int ,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 void* str2ull (int ) ;
 scalar_t__ unlikely (int) ;

int do_proc_sys_devices_system_edac_mc(int update_every, usec_t dt) {
    (void)dt;

    if(unlikely(mc_root == ((void*)0))) {
        find_all_mc();
        if(unlikely(mc_root == ((void*)0)))
            return 1;
    }

    static int do_ce = -1, do_ue = -1;
    calculated_number ce_sum = 0, ue_sum = 0;
    struct mc *m;

    if(unlikely(do_ce == -1)) {
        do_ce = config_get_boolean_ondemand("plugin:proc:/sys/devices/system/edac/mc", "enable ECC memory correctable errors", CONFIG_BOOLEAN_AUTO);
        do_ue = config_get_boolean_ondemand("plugin:proc:/sys/devices/system/edac/mc", "enable ECC memory uncorrectable errors", CONFIG_BOOLEAN_AUTO);
    }

    if(do_ce != CONFIG_BOOLEAN_NO) {
        for(m = mc_root; m; m = m->next) {
            if(m->ce_count_filename) {
                m->ce_updated = 0;

                if(unlikely(!m->ce_ff)) {
                    m->ce_ff = procfile_open(m->ce_count_filename, " \t", PROCFILE_FLAG_DEFAULT);
                    if(unlikely(!m->ce_ff))
                        continue;
                }

                m->ce_ff = procfile_readall(m->ce_ff);
                if(unlikely(!m->ce_ff || procfile_lines(m->ce_ff) < 1 || procfile_linewords(m->ce_ff, 0) < 1))
                    continue;

                m->ce_count = str2ull(procfile_lineword(m->ce_ff, 0, 0));
                ce_sum += m->ce_count;
                m->ce_updated = 1;
            }
        }
    }

    if(do_ue != CONFIG_BOOLEAN_NO) {
        for(m = mc_root; m; m = m->next) {
            if(m->ue_count_filename) {
                m->ue_updated = 0;

                if(unlikely(!m->ue_ff)) {
                    m->ue_ff = procfile_open(m->ue_count_filename, " \t", PROCFILE_FLAG_DEFAULT);
                    if(unlikely(!m->ue_ff))
                        continue;
                }

                m->ue_ff = procfile_readall(m->ue_ff);
                if(unlikely(!m->ue_ff || procfile_lines(m->ue_ff) < 1 || procfile_linewords(m->ue_ff, 0) < 1))
                    continue;

                m->ue_count = str2ull(procfile_lineword(m->ue_ff, 0, 0));
                ue_sum += m->ue_count;
                m->ue_updated = 1;
            }
        }
    }



    if(do_ce == CONFIG_BOOLEAN_YES || (do_ce == CONFIG_BOOLEAN_AUTO &&
                                       (ce_sum > 0 || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_ce = CONFIG_BOOLEAN_YES;

        static RRDSET *ce_st = ((void*)0);

        if(unlikely(!ce_st)) {
            ce_st = rrdset_create_localhost(
                    "mem"
                    , "ecc_ce"
                    , ((void*)0)
                    , "ecc"
                    , ((void*)0)
                    , "ECC Memory Correctable Errors"
                    , "errors"
                    , PLUGIN_PROC_NAME
                    , "/sys/devices/system/edac/mc"
                    , NETDATA_CHART_PRIO_MEM_HW_ECC_CE
                    , update_every
                    , RRDSET_TYPE_LINE
            );
        }
        else
            rrdset_next(ce_st);

        for(m = mc_root; m; m = m->next) {
            if (m->ce_count_filename && m->ce_updated) {
                if(unlikely(!m->ce_rd))
                    m->ce_rd = rrddim_add(ce_st, m->name, ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);

                rrddim_set_by_pointer(ce_st, m->ce_rd, m->ce_count);
            }
        }

        rrdset_done(ce_st);
    }



    if(do_ue == CONFIG_BOOLEAN_YES || (do_ue == CONFIG_BOOLEAN_AUTO &&
                                       (ue_sum > 0 || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))) {
        do_ue = CONFIG_BOOLEAN_YES;

        static RRDSET *ue_st = ((void*)0);

        if(unlikely(!ue_st)) {
            ue_st = rrdset_create_localhost(
                    "mem"
                    , "ecc_ue"
                    , ((void*)0)
                    , "ecc"
                    , ((void*)0)
                    , "ECC Memory Uncorrectable Errors"
                    , "errors"
                    , PLUGIN_PROC_NAME
                    , "/sys/devices/system/edac/mc"
                    , NETDATA_CHART_PRIO_MEM_HW_ECC_UE
                    , update_every
                    , RRDSET_TYPE_LINE
            );
        }
        else
            rrdset_next(ue_st);

        for(m = mc_root; m; m = m->next) {
            if (m->ue_count_filename && m->ue_updated) {
                if(unlikely(!m->ue_rd))
                    m->ue_rd = rrddim_add(ue_st, m->name, ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);

                rrddim_set_by_pointer(ue_st, m->ue_rd, m->ue_count);
            }
        }

        rrdset_done(ue_st);
    }

    return 0;
}
