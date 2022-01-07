
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {long len; } ;
struct TYPE_5__ {unsigned int dropepoch; int droprec; int duprec; int pkts; } ;
typedef TYPE_1__ MEMPACKET_TEST_CTX ;
typedef TYPE_2__ MEMPACKET ;
typedef int BIO ;
 TYPE_1__* BIO_get_data (int *) ;
 long BIO_get_shutdown (int *) ;
 int BIO_set_shutdown (int *,int) ;




 int sk_MEMPACKET_num (int ) ;
 TYPE_2__* sk_MEMPACKET_value (int ,int ) ;

__attribute__((used)) static long mempacket_test_ctrl(BIO *bio, int cmd, long num, void *ptr)
{
    long ret = 1;
    MEMPACKET_TEST_CTX *ctx = BIO_get_data(bio);
    MEMPACKET *thispkt;

    switch (cmd) {
    case 140:
        ret = (long)(sk_MEMPACKET_num(ctx->pkts) == 0);
        break;
    case 138:
        ret = BIO_get_shutdown(bio);
        break;
    case 133:
        BIO_set_shutdown(bio, (int)num);
        break;
    case 132:
        ret = 0L;
        break;
    case 137:
        thispkt = sk_MEMPACKET_value(ctx->pkts, 0);
        if (thispkt == ((void*)0))
            ret = 0;
        else
            ret = thispkt->len;
        break;
    case 139:
        ret = 1;
        break;
    case 130:
        ctx->dropepoch = (unsigned int)num;
        break;
    case 129:
        ctx->droprec = (int)num;
        break;
    case 131:
        ret = ctx->droprec;
        break;
    case 128:
        ctx->duprec = (int)num;
        break;
    case 134:
    case 141:
    case 135:
    case 136:
    default:
        ret = 0;
        break;
    }
    return ret;
}
