
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sigalgcnt; int sigalgs; } ;
typedef TYPE_1__ sig_cb_st ;
typedef int CERT ;


 int CONF_parse_list (char const*,char,int,int ,TYPE_1__*) ;
 int sig_cb ;
 int tls1_set_raw_sigalgs (int *,int ,scalar_t__,int) ;

int tls1_set_sigalgs_list(CERT *c, const char *str, int client)
{
    sig_cb_st sig;
    sig.sigalgcnt = 0;
    if (!CONF_parse_list(str, ':', 1, sig_cb, &sig))
        return 0;
    if (c == ((void*)0))
        return 1;
    return tls1_set_raw_sigalgs(c, sig.sigalgs, sig.sigalgcnt, client);
}
