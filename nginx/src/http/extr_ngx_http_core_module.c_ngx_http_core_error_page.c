
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_18__ {char* data; int len; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {int len; char* data; } ;
struct TYPE_21__ {TYPE_1__ value; int * lengths; } ;
struct TYPE_19__ {int status; int overwrite; TYPE_3__ args; TYPE_6__ value; } ;
typedef TYPE_4__ ngx_http_err_page_t ;
struct TYPE_20__ {int * error_pages; } ;
typedef TYPE_5__ ngx_http_core_loc_conf_t ;
typedef TYPE_6__ ngx_http_complex_value_t ;
struct TYPE_22__ {TYPE_6__* complex_value; TYPE_3__* value; TYPE_8__* cf; } ;
typedef TYPE_7__ ngx_http_compile_complex_value_t ;
struct TYPE_23__ {TYPE_2__* args; int pool; } ;
typedef TYPE_8__ ngx_conf_t ;
typedef int ngx_command_t ;
struct TYPE_17__ {int nelts; TYPE_3__* elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_ERROR ;


 int NGX_HTTP_BAD_REQUEST ;

 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_4__* ngx_array_push (int *) ;
 void* ngx_atoi (char*,int) ;
 int ngx_conf_log_error (int ,TYPE_8__*,int ,char*,TYPE_3__*) ;
 scalar_t__ ngx_http_compile_complex_value (TYPE_7__*) ;
 int ngx_memzero (TYPE_7__*,int) ;
 int ngx_str_null (TYPE_3__*) ;
 scalar_t__ ngx_strchr (char*,char) ;

__attribute__((used)) static char *
ngx_http_core_error_page(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_http_core_loc_conf_t *clcf = conf;

    u_char *p;
    ngx_int_t overwrite;
    ngx_str_t *value, uri, args;
    ngx_uint_t i, n;
    ngx_http_err_page_t *err;
    ngx_http_complex_value_t cv;
    ngx_http_compile_complex_value_t ccv;

    if (clcf->error_pages == ((void*)0)) {
        clcf->error_pages = ngx_array_create(cf->pool, 4,
                                             sizeof(ngx_http_err_page_t));
        if (clcf->error_pages == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    value = cf->args->elts;

    i = cf->args->nelts - 2;

    if (value[i].data[0] == '=') {
        if (i == 1) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid value \"%V\"", &value[i]);
            return NGX_CONF_ERROR;
        }

        if (value[i].len > 1) {
            overwrite = ngx_atoi(&value[i].data[1], value[i].len - 1);

            if (overwrite == NGX_ERROR) {
                ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                                   "invalid value \"%V\"", &value[i]);
                return NGX_CONF_ERROR;
            }

        } else {
            overwrite = 0;
        }

        n = 2;

    } else {
        overwrite = -1;
        n = 1;
    }

    uri = value[cf->args->nelts - 1];

    ngx_memzero(&ccv, sizeof(ngx_http_compile_complex_value_t));

    ccv.cf = cf;
    ccv.value = &uri;
    ccv.complex_value = &cv;

    if (ngx_http_compile_complex_value(&ccv) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    ngx_str_null(&args);

    if (cv.lengths == ((void*)0) && uri.len && uri.data[0] == '/') {
        p = (u_char *) ngx_strchr(uri.data, '?');

        if (p) {
            cv.value.len = p - uri.data;
            cv.value.data = uri.data;
            p++;
            args.len = (uri.data + uri.len) - p;
            args.data = p;
        }
    }

    for (i = 1; i < cf->args->nelts - n; i++) {
        err = ngx_array_push(clcf->error_pages);
        if (err == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        err->status = ngx_atoi(value[i].data, value[i].len);

        if (err->status == NGX_ERROR || err->status == 499) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "invalid value \"%V\"", &value[i]);
            return NGX_CONF_ERROR;
        }

        if (err->status < 300 || err->status > 599) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                               "value \"%V\" must be between 300 and 599",
                               &value[i]);
            return NGX_CONF_ERROR;
        }

        err->overwrite = overwrite;

        if (overwrite == -1) {
            switch (err->status) {
                case 128:
                case 130:
                case 129:
                    err->overwrite = NGX_HTTP_BAD_REQUEST;
            }
        }

        err->value = cv;
        err->args = args;
    }

    return NGX_CONF_OK;
}
