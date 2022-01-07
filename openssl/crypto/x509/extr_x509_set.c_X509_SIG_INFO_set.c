
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int mdnid; int pknid; int secbits; int flags; } ;
typedef TYPE_1__ X509_SIG_INFO ;



void X509_SIG_INFO_set(X509_SIG_INFO *siginf, int mdnid, int pknid,
                       int secbits, uint32_t flags)
{
    siginf->mdnid = mdnid;
    siginf->pknid = pknid;
    siginf->secbits = secbits;
    siginf->flags = flags;
}
