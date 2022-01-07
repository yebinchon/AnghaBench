
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_priv {int dummy; } ;


 int fe_clean_rx (struct fe_priv*) ;
 int fe_clean_tx (struct fe_priv*) ;

__attribute__((used)) static void fe_free_dma(struct fe_priv *priv)
{
 fe_clean_tx(priv);
 fe_clean_rx(priv);
}
