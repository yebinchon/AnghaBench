
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* response; } ;
struct TYPE_7__ {int status; } ;
struct TYPE_6__ {TYPE_2__* status_info; } ;
typedef TYPE_2__ TS_STATUS_INFO ;
typedef TYPE_3__ TS_RESP_CTX ;


 scalar_t__ ASN1_INTEGER_get (int ) ;
 int TS_RESP_CTX_set_status_info (TYPE_3__*,int,char const*) ;
 scalar_t__ TS_STATUS_GRANTED ;

int TS_RESP_CTX_set_status_info_cond(TS_RESP_CTX *ctx,
                                     int status, const char *text)
{
    int ret = 1;
    TS_STATUS_INFO *si = ctx->response->status_info;

    if (ASN1_INTEGER_get(si->status) == TS_STATUS_GRANTED) {
        ret = TS_RESP_CTX_set_status_info(ctx, status, text);
    }
    return ret;
}
