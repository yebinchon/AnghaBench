
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hash; int sig; int sigandhash; int sigalg; } ;
struct TYPE_4__ {scalar_t__ shared_sigalgslen; TYPE_2__** shared_sigalgs; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ SIGALG_LOOKUP ;


 scalar_t__ INT_MAX ;

int SSL_get_shared_sigalgs(SSL *s, int idx,
                           int *psign, int *phash, int *psignhash,
                           unsigned char *rsig, unsigned char *rhash)
{
    const SIGALG_LOOKUP *shsigalgs;
    if (s->shared_sigalgs == ((void*)0)
        || idx < 0
        || idx >= (int)s->shared_sigalgslen
        || s->shared_sigalgslen > INT_MAX)
        return 0;
    shsigalgs = s->shared_sigalgs[idx];
    if (phash != ((void*)0))
        *phash = shsigalgs->hash;
    if (psign != ((void*)0))
        *psign = shsigalgs->sig;
    if (psignhash != ((void*)0))
        *psignhash = shsigalgs->sigandhash;
    if (rsig != ((void*)0))
        *rsig = (unsigned char)(shsigalgs->sigalg & 0xff);
    if (rhash != ((void*)0))
        *rhash = (unsigned char)((shsigalgs->sigalg >> 8) & 0xff);
    return (int)s->shared_sigalgslen;
}
