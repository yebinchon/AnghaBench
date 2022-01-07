
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_buf {int priv; } ;
struct ra {int dummy; } ;
typedef int ptrdiff_t ;


 int get_gpu (struct ra*) ;
 int pl_buf_write (int ,int ,int ,void const*,size_t) ;

__attribute__((used)) static void buf_update_pl(struct ra *ra, struct ra_buf *buf, ptrdiff_t offset,
                          const void *data, size_t size)
{
    pl_buf_write(get_gpu(ra), buf->priv, offset, data, size);
}
