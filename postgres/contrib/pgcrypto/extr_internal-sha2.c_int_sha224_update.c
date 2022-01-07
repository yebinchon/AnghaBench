
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int pg_sha224_ctx ;
struct TYPE_4__ {scalar_t__ ptr; } ;
struct TYPE_5__ {TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;


 int pg_sha224_update (int *,int const*,unsigned int) ;

__attribute__((used)) static void
int_sha224_update(PX_MD *h, const uint8 *data, unsigned dlen)
{
 pg_sha224_ctx *ctx = (pg_sha224_ctx *) h->p.ptr;

 pg_sha224_update(ctx, data, dlen);
}
