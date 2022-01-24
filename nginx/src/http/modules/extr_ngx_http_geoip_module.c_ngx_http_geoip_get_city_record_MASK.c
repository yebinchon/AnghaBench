#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_5__ {scalar_t__ city; scalar_t__ city_v6; } ;
typedef  TYPE_1__ ngx_http_geoip_conf_t ;
typedef  int /*<<< orphan*/  GeoIPRecord ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ngx_http_geoip_module ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GeoIPRecord *
FUNC5(ngx_http_request_t *r)
{
    ngx_http_geoip_conf_t  *gcf;

    gcf = FUNC4(r, ngx_http_geoip_module);

    if (gcf->city) {
#if (NGX_HAVE_GEOIP_V6)
        return gcf->city_v6
                   ? GeoIP_record_by_ipnum_v6(gcf->city,
                                              ngx_http_geoip_addr_v6(r, gcf))
                   : GeoIP_record_by_ipnum(gcf->city,
                                           ngx_http_geoip_addr(r, gcf));
#else
        return FUNC0(gcf->city, FUNC2(r, gcf));
#endif
    }

    return NULL;
}