
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; scalar_t__ data; } ;
typedef TYPE_1__ BUF_MEM ;


 int ASN1_F_COLLECT_DATA ;
 int ASN1err (int ,int ) ;
 int BUF_MEM_grow_clean (TYPE_1__*,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int memcpy (scalar_t__,unsigned char const*,long) ;

__attribute__((used)) static int collect_data(BUF_MEM *buf, const unsigned char **p, long plen)
{
    int len;
    if (buf) {
        len = buf->length;
        if (!BUF_MEM_grow_clean(buf, len + plen)) {
            ASN1err(ASN1_F_COLLECT_DATA, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        memcpy(buf->data + len, *p, plen);
    }
    *p += plen;
    return 1;
}
