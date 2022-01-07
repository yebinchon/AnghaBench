
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ filter; scalar_t__ jpeg_quality; scalar_t__ webp_quality; scalar_t__ sharpen; int buffer_size; int interlace; int transparency; int * shcv; int * wqcv; int * jqcv; int acv; int hcv; int wcv; int angle; int height; int width; } ;
typedef TYPE_1__ ngx_http_image_filter_conf_t ;
typedef int ngx_conf_t ;


 char* NGX_CONF_OK ;
 scalar_t__ NGX_CONF_UNSET_UINT ;
 scalar_t__ NGX_HTTP_IMAGE_OFF ;
 int ngx_conf_merge_size_value (int ,int ,int) ;
 int ngx_conf_merge_uint_value (scalar_t__,scalar_t__,int) ;
 int ngx_conf_merge_value (int ,int ,int) ;

__attribute__((used)) static char *
ngx_http_image_filter_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_image_filter_conf_t *prev = parent;
    ngx_http_image_filter_conf_t *conf = child;

    if (conf->filter == NGX_CONF_UNSET_UINT) {

        if (prev->filter == NGX_CONF_UNSET_UINT) {
            conf->filter = NGX_HTTP_IMAGE_OFF;

        } else {
            conf->filter = prev->filter;
            conf->width = prev->width;
            conf->height = prev->height;
            conf->angle = prev->angle;
            conf->wcv = prev->wcv;
            conf->hcv = prev->hcv;
            conf->acv = prev->acv;
        }
    }

    if (conf->jpeg_quality == NGX_CONF_UNSET_UINT) {


        ngx_conf_merge_uint_value(conf->jpeg_quality, prev->jpeg_quality, 75);

        if (conf->jqcv == ((void*)0)) {
            conf->jqcv = prev->jqcv;
        }
    }

    if (conf->webp_quality == NGX_CONF_UNSET_UINT) {


        ngx_conf_merge_uint_value(conf->webp_quality, prev->webp_quality, 80);

        if (conf->wqcv == ((void*)0)) {
            conf->wqcv = prev->wqcv;
        }
    }

    if (conf->sharpen == NGX_CONF_UNSET_UINT) {
        ngx_conf_merge_uint_value(conf->sharpen, prev->sharpen, 0);

        if (conf->shcv == ((void*)0)) {
            conf->shcv = prev->shcv;
        }
    }

    ngx_conf_merge_value(conf->transparency, prev->transparency, 1);

    ngx_conf_merge_value(conf->interlace, prev->interlace, 0);

    ngx_conf_merge_size_value(conf->buffer_size, prev->buffer_size,
                              1 * 1024 * 1024);

    return NGX_CONF_OK;
}
