
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_11__ {int name; TYPE_1__* regex; } ;
typedef TYPE_2__ ngx_regex_elt_t ;
struct TYPE_12__ {scalar_t__ pcre_jit; } ;
typedef TYPE_3__ ngx_regex_conf_t ;
struct TYPE_13__ {TYPE_9__* data; int handler; } ;
typedef TYPE_4__ ngx_pool_cleanup_t ;
struct TYPE_14__ {size_t nelts; TYPE_2__* elts; struct TYPE_14__* next; } ;
typedef TYPE_5__ ngx_list_part_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int log; int pool; int conf_ctx; } ;
typedef TYPE_6__ ngx_cycle_t ;
struct TYPE_16__ {TYPE_5__ part; } ;
struct TYPE_10__ {int extra; int code; } ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_INFO ;
 int NGX_OK ;
 int PCRE_INFO_JIT ;
 int PCRE_STUDY_JIT_COMPILE ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*,char const*,...) ;
 int ngx_pcre_free_studies ;
 TYPE_9__* ngx_pcre_studies ;
 TYPE_4__* ngx_pool_cleanup_add (int ,int ) ;
 int ngx_regex_malloc_done () ;
 int ngx_regex_malloc_init (int ) ;
 int ngx_regex_module ;
 int pcre_fullinfo (int ,int ,int ,int*) ;
 int pcre_study (int ,int,char const**) ;

__attribute__((used)) static ngx_int_t
ngx_regex_module_init(ngx_cycle_t *cycle)
{
    int opt;
    const char *errstr;
    ngx_uint_t i;
    ngx_list_part_t *part;
    ngx_regex_elt_t *elts;

    opt = 0;
    ngx_regex_malloc_init(cycle->pool);

    part = &ngx_pcre_studies->part;
    elts = part->elts;

    for (i = 0; ; i++) {

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }

            part = part->next;
            elts = part->elts;
            i = 0;
        }

        elts[i].regex->extra = pcre_study(elts[i].regex->code, opt, &errstr);

        if (errstr != ((void*)0)) {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, 0,
                          "pcre_study() failed: %s in \"%s\"",
                          errstr, elts[i].name);
        }
    }

    ngx_regex_malloc_done();

    ngx_pcre_studies = ((void*)0);

    return NGX_OK;
}
