
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int ciphername; int gc; int ncp_ciphers; scalar_t__ ncp_enabled; } ;


 int D_TLS_DEBUG_LOW ;
 int msg (int ,char*,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 int string_alloc (char const*,int *) ;
 scalar_t__ tls_item_in_cipher_list (char const*,int ) ;

void
tls_poor_mans_ncp(struct options *o, const char *remote_ciphername)
{
    if (o->ncp_enabled && remote_ciphername
        && 0 != strcmp(o->ciphername, remote_ciphername))
    {
        if (tls_item_in_cipher_list(remote_ciphername, o->ncp_ciphers))
        {
            o->ciphername = string_alloc(remote_ciphername, &o->gc);
            msg(D_TLS_DEBUG_LOW, "Using peer cipher '%s'", o->ciphername);
        }
    }
}
