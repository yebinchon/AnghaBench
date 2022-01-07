
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_6__ {size_t len; int valid; int not_found; scalar_t__ no_cacheable; int * data; } ;
typedef TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_7__ {int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int GeoIPRecord ;


 int GeoIPRecord_delete (int *) ;
 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_http_geoip_get_city_record (TYPE_2__*) ;
 int ngx_memcpy (int *,char*,size_t) ;
 int * ngx_pnalloc (int ,size_t) ;
 size_t ngx_strlen (char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_geoip_city_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    char *val;
    size_t len;
    GeoIPRecord *gr;

    gr = ngx_http_geoip_get_city_record(r);
    if (gr == ((void*)0)) {
        goto not_found;
    }

    val = *(char **) ((char *) gr + data);
    if (val == ((void*)0)) {
        goto no_value;
    }

    len = ngx_strlen(val);
    v->data = ngx_pnalloc(r->pool, len);
    if (v->data == ((void*)0)) {
        GeoIPRecord_delete(gr);
        return NGX_ERROR;
    }

    ngx_memcpy(v->data, val, len);

    v->len = len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    GeoIPRecord_delete(gr);

    return NGX_OK;

no_value:

    GeoIPRecord_delete(gr);

not_found:

    v->not_found = 1;

    return NGX_OK;
}
