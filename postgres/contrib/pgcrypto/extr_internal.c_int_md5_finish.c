
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {scalar_t__ ptr; } ;
struct TYPE_5__ {TYPE_1__ p; } ;
typedef TYPE_2__ PX_MD ;
typedef int MD5_CTX ;


 int MD5Final (int *,int *) ;

__attribute__((used)) static void
int_md5_finish(PX_MD *h, uint8 *dst)
{
 MD5_CTX *ctx = (MD5_CTX *) h->p.ptr;

 MD5Final(dst, ctx);
}
