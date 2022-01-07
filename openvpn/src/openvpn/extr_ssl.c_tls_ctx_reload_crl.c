
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tls_root_ctx {scalar_t__ crl_last_size; int crl_last_mtime; } ;
struct TYPE_3__ {int st_mtime; scalar_t__ st_size; int member_0; } ;
typedef TYPE_1__ platform_stat_t ;


 int M_WARN ;
 int backend_tls_ctx_reload_crl (struct tls_root_ctx*,char const*,char const*) ;
 int msg (int ,char*) ;
 scalar_t__ platform_stat (char const*,TYPE_1__*) ;

__attribute__((used)) static void
tls_ctx_reload_crl(struct tls_root_ctx *ssl_ctx, const char *crl_file,
                   const char *crl_file_inline)
{

    platform_stat_t crl_stat = {0};







    if (crl_file_inline)
    {
        crl_stat.st_mtime = 1;
    }
    else if (platform_stat(crl_file, &crl_stat) < 0)
    {
        msg(M_WARN, "WARNING: Failed to stat CRL file, not (re)loading CRL.");
        return;
    }






    if ((ssl_ctx->crl_last_size == crl_stat.st_size)
        && (ssl_ctx->crl_last_mtime == crl_stat.st_mtime))
    {
        return;
    }

    ssl_ctx->crl_last_mtime = crl_stat.st_mtime;
    ssl_ctx->crl_last_size = crl_stat.st_size;
    backend_tls_ctx_reload_crl(ssl_ctx, crl_file, crl_file_inline);
}
