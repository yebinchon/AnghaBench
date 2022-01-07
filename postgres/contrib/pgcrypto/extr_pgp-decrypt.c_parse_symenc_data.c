
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sess_key_len; int sess_key; int cipher_algo; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_Context ;
typedef TYPE_1__ PGP_CFB ;
typedef int MBuf ;


 int ALLOW_COMPR ;
 int NO_MDC ;
 int pgp_cfb_create (TYPE_1__**,int ,int ,int ,int,int *) ;
 int pgp_cfb_free (TYPE_1__*) ;
 int pgp_decrypt_filter ;
 int prefix_filter ;
 int process_data_packets (TYPE_1__*,int *,int *,int ,int ) ;
 int pullf_create (int **,int *,TYPE_1__*,int *) ;
 int pullf_free (int *) ;

__attribute__((used)) static int
parse_symenc_data(PGP_Context *ctx, PullFilter *pkt, MBuf *dst)
{
 int res;
 PGP_CFB *cfb = ((void*)0);
 PullFilter *pf_decrypt = ((void*)0);
 PullFilter *pf_prefix = ((void*)0);

 res = pgp_cfb_create(&cfb, ctx->cipher_algo,
       ctx->sess_key, ctx->sess_key_len, 1, ((void*)0));
 if (res < 0)
  goto out;

 res = pullf_create(&pf_decrypt, &pgp_decrypt_filter, cfb, pkt);
 if (res < 0)
  goto out;

 res = pullf_create(&pf_prefix, &prefix_filter, ctx, pf_decrypt);
 if (res < 0)
  goto out;

 res = process_data_packets(ctx, dst, pf_prefix, ALLOW_COMPR, NO_MDC);

out:
 if (pf_prefix)
  pullf_free(pf_prefix);
 if (pf_decrypt)
  pullf_free(pf_decrypt);
 if (cfb)
  pgp_cfb_free(cfb);

 return res;
}
