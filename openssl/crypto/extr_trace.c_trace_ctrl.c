
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_data_st {int data; int category; int (* callback ) (char*,int ,int ,int,int ) ;} ;
typedef int BIO ;


 struct trace_data_st* BIO_get_data (int *) ;


 int stub1 (char*,int ,int ,int,int ) ;

__attribute__((used)) static long trace_ctrl(BIO *channel, int cmd, long argl, void *argp)
{
    struct trace_data_st *ctx = BIO_get_data(channel);

    switch (cmd) {
    case 129:
    case 128:

        ctx->callback("", 0, ctx->category, cmd, ctx->data);
        return 1;
    default:
        break;
    }
    return -2;
}
