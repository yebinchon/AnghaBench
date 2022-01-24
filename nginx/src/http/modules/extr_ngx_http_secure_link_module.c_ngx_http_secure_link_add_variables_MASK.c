#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_3__ {int /*<<< orphan*/  get_handler; } ;
typedef  TYPE_1__ ngx_http_variable_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_secure_link_expires_name ; 
 int /*<<< orphan*/  ngx_http_secure_link_expires_variable ; 
 int /*<<< orphan*/  ngx_http_secure_link_name ; 
 int /*<<< orphan*/  ngx_http_secure_link_variable ; 

__attribute__((used)) static ngx_int_t
FUNC1(ngx_conf_t *cf)
{
    ngx_http_variable_t  *var;

    var = FUNC0(cf, &ngx_http_secure_link_name, 0);
    if (var == NULL) {
        return NGX_ERROR;
    }

    var->get_handler = ngx_http_secure_link_variable;

    var = FUNC0(cf, &ngx_http_secure_link_expires_name, 0);
    if (var == NULL) {
        return NGX_ERROR;
    }

    var->get_handler = ngx_http_secure_link_expires_variable;

    return NGX_OK;
}