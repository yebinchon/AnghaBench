
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* DYNAMIC_LIBNAME; int no_vcheck; char* engine_id; int list_add_value; int dir_load; int dirs; int * dynamic_dso; } ;
typedef TYPE_1__ dynamic_data_ctx ;
typedef int ENGINE ;
 int ENGINE_F_DYNAMIC_CTRL ;
 int ENGINE_R_ALREADY_LOADED ;
 int ENGINE_R_CTRL_COMMAND_NOT_IMPLEMENTED ;
 int ENGINE_R_INVALID_ARGUMENT ;
 int ENGINE_R_NOT_LOADED ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 void* OPENSSL_strdup (void*) ;
 TYPE_1__* dynamic_get_data_ctx (int *) ;
 int dynamic_load (int *,TYPE_1__*) ;
 int sk_OPENSSL_STRING_push (int ,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int dynamic_ctrl(ENGINE *e, int cmd, long i, void *p, void (*f) (void))
{
    dynamic_data_ctx *ctx = dynamic_get_data_ctx(e);
    int initialised;

    if (!ctx) {
        ENGINEerr(ENGINE_F_DYNAMIC_CTRL, ENGINE_R_NOT_LOADED);
        return 0;
    }
    initialised = ((ctx->dynamic_dso == ((void*)0)) ? 0 : 1);

    if (initialised) {
        ENGINEerr(ENGINE_F_DYNAMIC_CTRL, ENGINE_R_ALREADY_LOADED);
        return 0;
    }
    switch (cmd) {
    case 128:

        if (p && (strlen((const char *)p) < 1))
            p = ((void*)0);
        OPENSSL_free(ctx->DYNAMIC_LIBNAME);
        if (p)
            ctx->DYNAMIC_LIBNAME = OPENSSL_strdup(p);
        else
            ctx->DYNAMIC_LIBNAME = ((void*)0);
        return (ctx->DYNAMIC_LIBNAME ? 1 : 0);
    case 129:
        ctx->no_vcheck = ((i == 0) ? 0 : 1);
        return 1;
    case 132:

        if (p && (strlen((const char *)p) < 1))
            p = ((void*)0);
        OPENSSL_free(ctx->engine_id);
        if (p)
            ctx->engine_id = OPENSSL_strdup(p);
        else
            ctx->engine_id = ((void*)0);
        return (ctx->engine_id ? 1 : 0);
    case 131:
        if ((i < 0) || (i > 2)) {
            ENGINEerr(ENGINE_F_DYNAMIC_CTRL, ENGINE_R_INVALID_ARGUMENT);
            return 0;
        }
        ctx->list_add_value = (int)i;
        return 1;
    case 130:
        return dynamic_load(e, ctx);
    case 133:
        if ((i < 0) || (i > 2)) {
            ENGINEerr(ENGINE_F_DYNAMIC_CTRL, ENGINE_R_INVALID_ARGUMENT);
            return 0;
        }
        ctx->dir_load = (int)i;
        return 1;
    case 134:

        if (p == ((void*)0) || (strlen((const char *)p) < 1)) {
            ENGINEerr(ENGINE_F_DYNAMIC_CTRL, ENGINE_R_INVALID_ARGUMENT);
            return 0;
        }
        {
            char *tmp_str = OPENSSL_strdup(p);
            if (tmp_str == ((void*)0)) {
                ENGINEerr(ENGINE_F_DYNAMIC_CTRL, ERR_R_MALLOC_FAILURE);
                return 0;
            }
            if (!sk_OPENSSL_STRING_push(ctx->dirs, tmp_str)) {
                OPENSSL_free(tmp_str);
                ENGINEerr(ENGINE_F_DYNAMIC_CTRL, ERR_R_MALLOC_FAILURE);
                return 0;
            }
        }
        return 1;
    default:
        break;
    }
    ENGINEerr(ENGINE_F_DYNAMIC_CTRL, ENGINE_R_CTRL_COMMAND_NOT_IMPLEMENTED);
    return 0;
}
