
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int pg_sha256_ctx ;
struct TYPE_4__ {scalar_t__ ptr; } ;
struct TYPE_5__ {TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;


 int pg_sha256_final (int *,int *) ;

__attribute__((used)) static void
int_sha256_finish(PX_MD *h, uint8 *dst)
{
 pg_sha256_ctx *ctx = (pg_sha256_ctx *) h->p.ptr;

 pg_sha256_final(ctx, dst);
}
