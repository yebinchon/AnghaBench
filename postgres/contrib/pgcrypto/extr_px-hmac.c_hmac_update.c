
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int md; } ;
typedef TYPE_1__ PX_HMAC ;


 int px_md_update (int ,int const*,unsigned int) ;

__attribute__((used)) static void
hmac_update(PX_HMAC *h, const uint8 *data, unsigned dlen)
{
 px_md_update(h->md, data, dlen);
}
