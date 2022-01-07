
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_buf {int priv; } ;
struct ra {int dummy; } ;


 int get_gpu (struct ra*) ;
 int pl_buf_poll (int ,int ,int ) ;

__attribute__((used)) static bool buf_poll_pl(struct ra *ra, struct ra_buf *buf)
{
    return !pl_buf_poll(get_gpu(ra), buf->priv, 0);
}
