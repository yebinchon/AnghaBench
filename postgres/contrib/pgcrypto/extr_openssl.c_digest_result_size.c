
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ctx; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
struct TYPE_6__ {TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;
typedef TYPE_3__ OSSLDigest ;


 int EVP_MD_CTX_size (int ) ;

__attribute__((used)) static unsigned
digest_result_size(PX_MD *h)
{
 OSSLDigest *digest = (OSSLDigest *) h->p.ptr;

 return EVP_MD_CTX_size(digest->ctx);
}
