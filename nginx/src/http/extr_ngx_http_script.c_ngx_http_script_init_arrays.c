
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
typedef int ngx_http_script_var_code_t ;
typedef int ngx_http_script_copy_code_t ;
struct TYPE_7__ {int variables; int ** values; TYPE_2__* cf; TYPE_1__* source; int ** lengths; int ** flushes; } ;
typedef TYPE_3__ ngx_http_script_compile_t ;
struct TYPE_6__ {int pool; } ;
struct TYPE_5__ {int len; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 void* ngx_array_create (int ,int,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_script_init_arrays(ngx_http_script_compile_t *sc)
{
    ngx_uint_t n;

    if (sc->flushes && *sc->flushes == ((void*)0)) {
        n = sc->variables ? sc->variables : 1;
        *sc->flushes = ngx_array_create(sc->cf->pool, n, sizeof(ngx_uint_t));
        if (*sc->flushes == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    if (*sc->lengths == ((void*)0)) {
        n = sc->variables * (2 * sizeof(ngx_http_script_copy_code_t)
                             + sizeof(ngx_http_script_var_code_t))
            + sizeof(uintptr_t);

        *sc->lengths = ngx_array_create(sc->cf->pool, n, 1);
        if (*sc->lengths == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    if (*sc->values == ((void*)0)) {
        n = (sc->variables * (2 * sizeof(ngx_http_script_copy_code_t)
                              + sizeof(ngx_http_script_var_code_t))
                + sizeof(uintptr_t)
                + sc->source->len
                + sizeof(uintptr_t) - 1)
            & ~(sizeof(uintptr_t) - 1);

        *sc->values = ngx_array_create(sc->cf->pool, n, 1);
        if (*sc->values == ((void*)0)) {
            return NGX_ERROR;
        }
    }

    sc->variables = 0;

    return NGX_OK;
}
