
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int chip_ver; int chip_rev; int * chip; } ;







 int ENODEV ;
 int ar8216_chip ;
 int ar8236_chip ;
 int ar8316_chip ;
 int ar8327_chip ;
 int ar8337_chip ;
 int ar8xxx_read_id (struct ar8xxx_priv*) ;
 int pr_err (char*,int,int ) ;

__attribute__((used)) static int
ar8xxx_id_chip(struct ar8xxx_priv *priv)
{
 int ret;

 ret = ar8xxx_read_id(priv);
 if(ret)
  return ret;

 switch (priv->chip_ver) {
 case 132:
  priv->chip = &ar8216_chip;
  break;
 case 131:
  priv->chip = &ar8236_chip;
  break;
 case 130:
  priv->chip = &ar8316_chip;
  break;
 case 129:
  priv->chip = &ar8327_chip;
  break;
 case 128:
  priv->chip = &ar8337_chip;
  break;
 default:
  pr_err("ar8216: Unknown Atheros device [ver=%d, rev=%d]\n",
         priv->chip_ver, priv->chip_rev);

  return -ENODEV;
 }

 return 0;
}
