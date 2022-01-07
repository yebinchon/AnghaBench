
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ptr; } ;
struct TYPE_6__ {TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;
typedef int OSSLDigest ;


 int free_openssl_digest (int *) ;
 int px_free (TYPE_2__*) ;

__attribute__((used)) static void
digest_free(PX_MD *h)
{
 OSSLDigest *digest = (OSSLDigest *) h->p.ptr;

 free_openssl_digest(digest);
 px_free(h);
}
