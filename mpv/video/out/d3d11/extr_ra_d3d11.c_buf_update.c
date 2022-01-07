
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_buf {struct d3d_buf* priv; } ;
struct ra {int dummy; } ;
struct d3d_buf {char* data; int dirty; } ;
typedef int ptrdiff_t ;


 int memcpy (char*,void const*,size_t) ;

__attribute__((used)) static void buf_update(struct ra *ra, struct ra_buf *buf, ptrdiff_t offset,
                       const void *data, size_t size)
{
    struct d3d_buf *buf_p = buf->priv;

    char *cdata = buf_p->data;
    memcpy(cdata + offset, data, size);
    buf_p->dirty = 1;
}
