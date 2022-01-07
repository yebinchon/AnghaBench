
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termbuf {unsigned int len; scalar_t__ mods; int * b; } ;


 int assert (int) ;
 int memmove (int *,int *,unsigned int) ;

__attribute__((used)) static void skip_buf(struct termbuf *b, unsigned int count)
{
    assert(count <= b->len);

    memmove(&b->b[0], &b->b[count], b->len - count);
    b->len -= count;
    b->mods = 0;
}
