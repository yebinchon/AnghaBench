
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_multi {scalar_t__ locked_cert_hash_set; TYPE_1__* session; } ;
struct cert_hash_set {int dummy; } ;
struct TYPE_2__ {struct cert_hash_set* cert_hash_set; } ;


 size_t TM_ACTIVE ;
 scalar_t__ cert_hash_copy (struct cert_hash_set const*) ;

void
tls_lock_cert_hash_set(struct tls_multi *multi)
{
    const struct cert_hash_set *chs = multi->session[TM_ACTIVE].cert_hash_set;
    if (chs && !multi->locked_cert_hash_set)
    {
        multi->locked_cert_hash_set = cert_hash_copy(chs);
    }
}
