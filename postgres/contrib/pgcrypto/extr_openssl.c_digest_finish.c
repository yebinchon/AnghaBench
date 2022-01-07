
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_7__ {int ctx; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
struct TYPE_6__ {TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;
typedef TYPE_3__ OSSLDigest ;


 int EVP_DigestFinal_ex (int ,int *,int *) ;

__attribute__((used)) static void
digest_finish(PX_MD *h, uint8 *dst)
{
 OSSLDigest *digest = (OSSLDigest *) h->p.ptr;

 EVP_DigestFinal_ex(digest->ctx, dst, ((void*)0));
}
