
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_8__ {TYPE_1__ p; } ;
typedef TYPE_2__ pg_sha256_ctx ;
typedef TYPE_2__ PX_MD ;


 int px_free (TYPE_2__*) ;
 int px_memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
int_sha256_free(PX_MD *h)
{
 pg_sha256_ctx *ctx = (pg_sha256_ctx *) h->p.ptr;

 px_memset(ctx, 0, sizeof(*ctx));
 px_free(ctx);
 px_free(h);
}
