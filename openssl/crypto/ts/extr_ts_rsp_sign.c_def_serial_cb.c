
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TS_resp_ctx {int dummy; } ;
typedef int ASN1_INTEGER ;


 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int TS_F_DEF_SERIAL_CB ;
 int TS_RESP_CTX_set_status_info (struct TS_resp_ctx*,int ,char*) ;
 int TS_STATUS_REJECTION ;
 int TSerr (int ,int ) ;

__attribute__((used)) static ASN1_INTEGER *def_serial_cb(struct TS_resp_ctx *ctx, void *data)
{
    ASN1_INTEGER *serial = ASN1_INTEGER_new();

    if (serial == ((void*)0))
        goto err;
    if (!ASN1_INTEGER_set(serial, 1))
        goto err;
    return serial;

 err:
    TSerr(TS_F_DEF_SERIAL_CB, ERR_R_MALLOC_FAILURE);
    TS_RESP_CTX_set_status_info(ctx, TS_STATUS_REJECTION,
                                "Error during serial number generation.");
    return ((void*)0);
}
