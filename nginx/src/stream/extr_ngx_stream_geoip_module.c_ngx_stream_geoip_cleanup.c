
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ city; scalar_t__ org; scalar_t__ country; } ;
typedef TYPE_1__ ngx_stream_geoip_conf_t ;


 int GeoIP_delete (scalar_t__) ;

__attribute__((used)) static void
ngx_stream_geoip_cleanup(void *data)
{
    ngx_stream_geoip_conf_t *gcf = data;

    if (gcf->country) {
        GeoIP_delete(gcf->country);
    }

    if (gcf->org) {
        GeoIP_delete(gcf->org);
    }

    if (gcf->city) {
        GeoIP_delete(gcf->city);
    }
}
