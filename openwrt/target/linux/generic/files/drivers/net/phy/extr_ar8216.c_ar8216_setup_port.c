
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {scalar_t__ vlan; } ;


 int AR8216_PORT_CPU ;
 void __ar8216_setup_port (struct ar8xxx_priv*,int,int ,int) ;
 scalar_t__ chip_is_ar8216 (struct ar8xxx_priv*) ;

__attribute__((used)) static void
ar8216_setup_port(struct ar8xxx_priv *priv, int port, u32 members)
{
 return __ar8216_setup_port(priv, port, members,
       chip_is_ar8216(priv) && priv->vlan &&
       port == AR8216_PORT_CPU);
}
