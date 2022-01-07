
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tls_client; scalar_t__ tls_server; scalar_t__ shared_secret_file; } ;
struct context {TYPE_1__ options; } ;


 int do_init_crypto_none (struct context*) ;
 int do_init_crypto_static (struct context*,unsigned int const) ;
 int do_init_crypto_tls (struct context*,unsigned int const) ;

__attribute__((used)) static void
do_init_crypto(struct context *c, const unsigned int flags)
{
    if (c->options.shared_secret_file)
    {
        do_init_crypto_static(c, flags);
    }
    else if (c->options.tls_server || c->options.tls_client)
    {
        do_init_crypto_tls(c, flags);
    }
    else
    {
        do_init_crypto_none(c);
    }
}
