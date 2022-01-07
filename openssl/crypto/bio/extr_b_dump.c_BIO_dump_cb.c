
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_dump_indent_cb (int (*) (void const*,size_t,void*),void*,void const*,int,int ) ;

int BIO_dump_cb(int (*cb) (const void *data, size_t len, void *u),
                void *u, const void *s, int len)
{
    return BIO_dump_indent_cb(cb, u, s, len, 0);
}
