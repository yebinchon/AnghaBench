
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md; } ;
typedef TYPE_1__ PX_HMAC ;


 int px_md_result_size (int ) ;

__attribute__((used)) static unsigned
hmac_result_size(PX_HMAC *h)
{
 return px_md_result_size(h->md);
}
