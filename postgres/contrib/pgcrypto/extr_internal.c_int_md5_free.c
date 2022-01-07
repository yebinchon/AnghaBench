
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_8__ {TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;
typedef TYPE_2__ MD5_CTX ;


 int px_free (TYPE_2__*) ;
 int px_memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
int_md5_free(PX_MD *h)
{
 MD5_CTX *ctx = (MD5_CTX *) h->p.ptr;

 px_memset(ctx, 0, sizeof(*ctx));
 px_free(ctx);
 px_free(h);
}
