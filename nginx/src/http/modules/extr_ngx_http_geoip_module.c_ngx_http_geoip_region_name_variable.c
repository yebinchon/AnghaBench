
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_9__ {size_t len; int valid; int not_found; scalar_t__ no_cacheable; int * data; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_10__ {int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_11__ {int region; int country_code; } ;
typedef TYPE_3__ GeoIPRecord ;


 int GeoIPRecord_delete (TYPE_3__*) ;
 char* GeoIP_region_name_by_code (int ,int ) ;
 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_3__* ngx_http_geoip_get_city_record (TYPE_2__*) ;
 int ngx_memcpy (int *,char const*,size_t) ;
 int * ngx_pnalloc (int ,size_t) ;
 size_t ngx_strlen (char const*) ;

__attribute__((used)) static ngx_int_t
ngx_http_geoip_region_name_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    size_t len;
    const char *val;
    GeoIPRecord *gr;

    gr = ngx_http_geoip_get_city_record(r);
    if (gr == ((void*)0)) {
        goto not_found;
    }

    val = GeoIP_region_name_by_code(gr->country_code, gr->region);

    GeoIPRecord_delete(gr);

    if (val == ((void*)0)) {
        goto not_found;
    }

    len = ngx_strlen(val);
    v->data = ngx_pnalloc(r->pool, len);
    if (v->data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(v->data, val, len);

    v->len = len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    return NGX_OK;

not_found:

    v->not_found = 1;

    return NGX_OK;
}
