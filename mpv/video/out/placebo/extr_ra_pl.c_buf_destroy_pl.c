
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_buf {int priv; } ;
struct ra {int dummy; } ;
struct pl_buf {int dummy; } ;


 int get_gpu (struct ra*) ;
 int pl_buf_destroy (int ,struct pl_buf const**) ;
 int talloc_free (struct ra_buf*) ;

__attribute__((used)) static void buf_destroy_pl(struct ra *ra, struct ra_buf *buf)
{
    if (!buf)
        return;

    pl_buf_destroy(get_gpu(ra), (const struct pl_buf **) &buf->priv);
    talloc_free(buf);
}
