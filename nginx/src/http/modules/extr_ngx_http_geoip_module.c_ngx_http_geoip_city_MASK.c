#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ data; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_12__ {int city_v6; TYPE_8__* city; } ;
typedef  TYPE_3__ ngx_http_geoip_conf_t ;
struct TYPE_13__ {TYPE_1__* args; } ;
typedef  TYPE_4__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_14__ {int databaseType; } ;
struct TYPE_10__ {int nelts; TYPE_2__* elts; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEOIP_CHARSET_UTF8 ; 
#define  GEOIP_CITY_EDITION_REV0 131 
#define  GEOIP_CITY_EDITION_REV0_V6 130 
#define  GEOIP_CITY_EDITION_REV1 129 
#define  GEOIP_CITY_EDITION_REV1_V6 128 
 int /*<<< orphan*/  GEOIP_MEMORY_CACHE ; 
 TYPE_8__* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*,TYPE_2__*,...) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_geoip_conf_t  *gcf = conf;

    ngx_str_t  *value;

    if (gcf->city) {
        return "is duplicate";
    }

    value = cf->args->elts;

    gcf->city = FUNC0((char *) value[1].data, GEOIP_MEMORY_CACHE);

    if (gcf->city == NULL) {
        FUNC2(NGX_LOG_EMERG, cf, 0,
                           "GeoIP_open(\"%V\") failed", &value[1]);

        return NGX_CONF_ERROR;
    }

    if (cf->args->nelts == 3) {
        if (FUNC3(value[2].data, "utf8") == 0) {
            FUNC1(gcf->city, GEOIP_CHARSET_UTF8);

        } else {
            FUNC2(NGX_LOG_EMERG, cf, 0,
                               "invalid parameter \"%V\"", &value[2]);
            return NGX_CONF_ERROR;
        }
    }

    switch (gcf->city->databaseType) {

    case GEOIP_CITY_EDITION_REV0:
    case GEOIP_CITY_EDITION_REV1:

        return NGX_CONF_OK;

#if (NGX_HAVE_GEOIP_V6)
    case GEOIP_CITY_EDITION_REV0_V6:
    case GEOIP_CITY_EDITION_REV1_V6:

        gcf->city_v6 = 1;
        return NGX_CONF_OK;
#endif

    default:
        FUNC2(NGX_LOG_EMERG, cf, 0,
                           "invalid GeoIP City database \"%V\" type:%d",
                           &value[1], gcf->city->databaseType);
        return NGX_CONF_ERROR;
    }
}