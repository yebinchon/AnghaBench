
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_data_st {size_t (* callback ) (char const*,size_t,int ,int ,int ) ;int data; int category; } ;
typedef int BIO ;


 struct trace_data_st* BIO_get_data (int *) ;
 int OSSL_TRACE_CTRL_WRITE ;
 size_t stub1 (char const*,size_t,int ,int ,int ) ;

__attribute__((used)) static int trace_write(BIO *channel,
                       const char *buf, size_t num, size_t *written)
{
    struct trace_data_st *ctx = BIO_get_data(channel);
    size_t cnt = ctx->callback(buf, num, ctx->category, OSSL_TRACE_CTRL_WRITE,
                               ctx->data);

    *written = cnt;
    return cnt != 0;
}
