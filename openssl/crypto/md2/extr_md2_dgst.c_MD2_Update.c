
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char const UCHAR ;
struct TYPE_4__ {unsigned char const* data; size_t num; } ;
typedef TYPE_1__ MD2_CTX ;


 size_t MD2_BLOCK ;
 int md2_block (TYPE_1__*,unsigned char const*) ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;

int MD2_Update(MD2_CTX *c, const unsigned char *data, size_t len)
{
    register UCHAR *p;

    if (len == 0)
        return 1;

    p = c->data;
    if (c->num != 0) {
        if ((c->num + len) >= MD2_BLOCK) {
            memcpy(&(p[c->num]), data, MD2_BLOCK - c->num);
            md2_block(c, c->data);
            data += (MD2_BLOCK - c->num);
            len -= (MD2_BLOCK - c->num);
            c->num = 0;

        } else {
            memcpy(&(p[c->num]), data, len);

            c->num += (int)len;
            return 1;
        }
    }




    while (len >= MD2_BLOCK) {
        md2_block(c, data);
        data += MD2_BLOCK;
        len -= MD2_BLOCK;
    }
    memcpy(p, data, len);
    c->num = (int)len;
    return 1;
}
