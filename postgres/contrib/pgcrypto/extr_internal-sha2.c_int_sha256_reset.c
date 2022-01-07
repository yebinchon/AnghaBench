
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pg_sha256_ctx ;
struct TYPE_4__ {scalar_t__ ptr; } ;
struct TYPE_5__ {TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;


 int pg_sha256_init (int *) ;

__attribute__((used)) static void
int_sha256_reset(PX_MD *h)
{
 pg_sha256_ctx *ctx = (pg_sha256_ctx *) h->p.ptr;

 pg_sha256_init(ctx);
}
