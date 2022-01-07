
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_7__ {scalar_t__ len; } ;
struct TYPE_5__ {TYPE_3__ profiles; } ;
typedef TYPE_1__ ngx_google_perftools_conf_t ;
struct TYPE_6__ {int log; int conf_ctx; } ;
typedef TYPE_2__ ngx_cycle_t ;


 scalar_t__ NGX_INT_T_LEN ;
 int NGX_LOG_CRIT ;
 int NGX_OK ;
 int ProfilerRegisterThread () ;
 scalar_t__ ProfilerStart (int *) ;
 int ProfilerStop () ;
 scalar_t__ getenv (char*) ;
 int * ngx_alloc (scalar_t__,int ) ;
 int ngx_errno ;
 int ngx_free (int *) ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 int ngx_google_perftools_module ;
 int ngx_log_error (int ,int ,int ,char*,int *) ;
 int ngx_pid ;
 int ngx_sprintf (int *,char*,TYPE_3__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_google_perftools_worker(ngx_cycle_t *cycle)
{
    u_char *profile;
    ngx_google_perftools_conf_t *gptcf;

    gptcf = (ngx_google_perftools_conf_t *)
                ngx_get_conf(cycle->conf_ctx, ngx_google_perftools_module);

    if (gptcf->profiles.len == 0) {
        return NGX_OK;
    }

    profile = ngx_alloc(gptcf->profiles.len + NGX_INT_T_LEN + 2, cycle->log);
    if (profile == ((void*)0)) {
        return NGX_OK;
    }

    if (getenv("CPUPROFILE")) {

        ProfilerStop();
    }

    ngx_sprintf(profile, "%V.%d%Z", &gptcf->profiles, ngx_pid);

    if (ProfilerStart(profile)) {

        ProfilerRegisterThread();

    } else {
        ngx_log_error(NGX_LOG_CRIT, cycle->log, ngx_errno,
                      "ProfilerStart(%s) failed", profile);
    }

    ngx_free(profile);

    return NGX_OK;
}
