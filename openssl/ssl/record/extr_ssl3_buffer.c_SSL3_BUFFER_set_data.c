
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t left; scalar_t__ offset; int buf; } ;
typedef TYPE_1__ SSL3_BUFFER ;


 int memcpy (int ,unsigned char const*,size_t) ;

void SSL3_BUFFER_set_data(SSL3_BUFFER *b, const unsigned char *d, size_t n)
{
    if (d != ((void*)0))
        memcpy(b->buf, d, n);
    b->left = n;
    b->offset = 0;
}
