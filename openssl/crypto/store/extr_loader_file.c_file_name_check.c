
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* search_name; } ;
struct TYPE_6__ {TYPE_1__ dir; } ;
struct TYPE_7__ {scalar_t__ expected_type; TYPE_2__ _; } ;
typedef TYPE_3__ OSSL_STORE_LOADER_CTX ;


 scalar_t__ OSSL_STORE_INFO_CERT ;
 scalar_t__ OSSL_STORE_INFO_CRL ;
 scalar_t__ ossl_isdigit (char const) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int file_name_check(OSSL_STORE_LOADER_CTX *ctx, const char *name)
{
    const char *p = ((void*)0);


    if (ctx->_.dir.search_name[0] == '\0')
        return 1;


    if (ctx->expected_type != 0
        && ctx->expected_type != OSSL_STORE_INFO_CERT
        && ctx->expected_type != OSSL_STORE_INFO_CRL)
        return 0;




    if (strncasecmp(name, ctx->_.dir.search_name,
                    sizeof(ctx->_.dir.search_name) - 1) != 0
        || name[sizeof(ctx->_.dir.search_name) - 1] != '.')
        return 0;
    p = &name[sizeof(ctx->_.dir.search_name)];





    if (*p == 'r') {
        p++;
        if (ctx->expected_type != 0
            && ctx->expected_type != OSSL_STORE_INFO_CRL)
            return 0;
    } else if (ctx->expected_type == OSSL_STORE_INFO_CRL) {
        return 0;
    }





    if (!ossl_isdigit(*p))
        return 0;
    while (ossl_isdigit(*p))
        p++;
    return *p == '\0';
}
