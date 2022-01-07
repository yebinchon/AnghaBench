
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fe_priv {TYPE_1__* phy; int * link; } ;
struct TYPE_2__ {scalar_t__* duplex; int * speed; } ;


 scalar_t__ DUPLEX_FULL ;
 int mt7620_handle_carrier (struct fe_priv*) ;
 int mt7620_print_link_state (struct fe_priv*,int,int ,int ,int) ;

void mt7620_mdio_link_adjust(struct fe_priv *priv, int port)
{
 mt7620_print_link_state(priv, port, priv->link[port],
    priv->phy->speed[port],
    (priv->phy->duplex[port] == DUPLEX_FULL));
 mt7620_handle_carrier(priv);
}
