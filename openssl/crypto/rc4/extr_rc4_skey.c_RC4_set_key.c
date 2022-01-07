
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* data; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ RC4_KEY ;
typedef unsigned int RC4_INT ;


 int SK_LOOP (unsigned int*,unsigned int) ;

void RC4_set_key(RC4_KEY *key, int len, const unsigned char *data)
{
    register RC4_INT tmp;
    register int id1, id2;
    register RC4_INT *d;
    unsigned int i;

    d = &(key->data[0]);
    key->x = 0;
    key->y = 0;
    id1 = id2 = 0;
    for (i = 0; i < 256; i++)
        d[i] = i;
    for (i = 0; i < 256; i += 4) {
        { tmp=d[(i + 0)]; id2 = (data[id1] + tmp + id2) & 0xff; if (++id1 == len) id1=0; d[(i + 0)]=d[id2]; d[id2]=tmp; };
        { tmp=d[(i + 1)]; id2 = (data[id1] + tmp + id2) & 0xff; if (++id1 == len) id1=0; d[(i + 1)]=d[id2]; d[id2]=tmp; };
        { tmp=d[(i + 2)]; id2 = (data[id1] + tmp + id2) & 0xff; if (++id1 == len) id1=0; d[(i + 2)]=d[id2]; d[id2]=tmp; };
        { tmp=d[(i + 3)]; id2 = (data[id1] + tmp + id2) & 0xff; if (++id1 == len) id1=0; d[(i + 3)]=d[id2]; d[id2]=tmp; };
    }
}
