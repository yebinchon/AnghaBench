
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fe_priv {TYPE_1__* phy; } ;
struct TYPE_2__ {int* speed; } ;






__attribute__((used)) static unsigned char *rt2880_speed_str(struct fe_priv *priv)
{
 switch (priv->phy->speed[0]) {
 case 128:
  return "1000";
 case 129:
  return "100";
 case 130:
  return "10";
 }

 return "?";
}
