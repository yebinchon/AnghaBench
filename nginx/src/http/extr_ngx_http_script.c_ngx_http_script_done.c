
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_8__ {int main; int * values; scalar_t__ complete_values; int * lengths; scalar_t__ complete_lengths; scalar_t__ root_prefix; scalar_t__ conf_prefix; scalar_t__ zero; } ;
typedef TYPE_2__ ngx_http_script_compile_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 uintptr_t* ngx_http_script_add_code (int ,int,int *) ;
 scalar_t__ ngx_http_script_add_copy_code (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ ngx_http_script_add_full_name_code (TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_script_done(ngx_http_script_compile_t *sc)
{
    ngx_str_t zero;
    uintptr_t *code;

    if (sc->zero) {

        zero.len = 1;
        zero.data = (u_char *) "\0";

        if (ngx_http_script_add_copy_code(sc, &zero, 0) != NGX_OK) {
            return NGX_ERROR;
        }
    }

    if (sc->conf_prefix || sc->root_prefix) {
        if (ngx_http_script_add_full_name_code(sc) != NGX_OK) {
            return NGX_ERROR;
        }
    }

    if (sc->complete_lengths) {
        code = ngx_http_script_add_code(*sc->lengths, sizeof(uintptr_t), ((void*)0));
        if (code == ((void*)0)) {
            return NGX_ERROR;
        }

        *code = (uintptr_t) ((void*)0);
    }

    if (sc->complete_values) {
        code = ngx_http_script_add_code(*sc->values, sizeof(uintptr_t),
                                        &sc->main);
        if (code == ((void*)0)) {
            return NGX_ERROR;
        }

        *code = (uintptr_t) ((void*)0);
    }

    return NGX_OK;
}
