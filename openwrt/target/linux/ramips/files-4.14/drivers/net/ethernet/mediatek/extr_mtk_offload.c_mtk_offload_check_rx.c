
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct fe_priv {int dummy; } ;


 int FIELD_GET (int ,int ) ;




 int MTK_RXD4_CPU_REASON ;
 int MTK_RXD4_FOE_ENTRY ;
 int mtk_offload_keepalive (struct fe_priv*,unsigned int) ;

int mtk_offload_check_rx(struct fe_priv *eth, struct sk_buff *skb, u32 rxd4)
{
 unsigned int hash;

 switch (FIELD_GET(MTK_RXD4_CPU_REASON, rxd4)) {
 case 129:
 case 130:
 case 131:
  hash = FIELD_GET(MTK_RXD4_FOE_ENTRY, rxd4);
  mtk_offload_keepalive(eth, hash);
  return -1;
 case 128:
  return -1;
 default:
  return 0;
 }
}
