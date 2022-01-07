
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Nr; int N; } ;
typedef TYPE_1__ BN_RECP_CTX ;


 int bn_init (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void BN_RECP_CTX_init(BN_RECP_CTX *recp)
{
    memset(recp, 0, sizeof(*recp));
    bn_init(&(recp->N));
    bn_init(&(recp->Nr));
}
