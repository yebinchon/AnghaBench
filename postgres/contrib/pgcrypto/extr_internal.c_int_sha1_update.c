
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {scalar_t__ ptr; } ;
struct TYPE_5__ {TYPE_1__ p; } ;
typedef int SHA1_CTX ;
typedef TYPE_2__ PX_MD ;


 int SHA1Update (int *,int const*,unsigned int) ;

__attribute__((used)) static void
int_sha1_update(PX_MD *h, const uint8 *data, unsigned dlen)
{
 SHA1_CTX *ctx = (SHA1_CTX *) h->p.ptr;

 SHA1Update(ctx, data, dlen);
}
