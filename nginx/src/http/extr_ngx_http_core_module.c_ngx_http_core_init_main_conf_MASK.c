#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ncaptures; void* variables_hash_bucket_size; void* variables_hash_max_size; void* server_names_hash_bucket_size; void* server_names_hash_max_size; } ;
typedef  TYPE_1__ ngx_http_core_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_OK ; 
 void* FUNC0 (void*,int) ; 
 int ngx_cacheline_size ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

__attribute__((used)) static char *
FUNC2(ngx_conf_t *cf, void *conf)
{
    ngx_http_core_main_conf_t *cmcf = conf;

    FUNC1(cmcf->server_names_hash_max_size, 512);
    FUNC1(cmcf->server_names_hash_bucket_size,
                             ngx_cacheline_size);

    cmcf->server_names_hash_bucket_size =
            FUNC0(cmcf->server_names_hash_bucket_size, ngx_cacheline_size);


    FUNC1(cmcf->variables_hash_max_size, 1024);
    FUNC1(cmcf->variables_hash_bucket_size, 64);

    cmcf->variables_hash_bucket_size =
               FUNC0(cmcf->variables_hash_bucket_size, ngx_cacheline_size);

    if (cmcf->ncaptures) {
        cmcf->ncaptures = (cmcf->ncaptures + 1) * 3;
    }

    return NGX_CONF_OK;
}