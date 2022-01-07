
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 void __ar8216_setup_port (struct ar8xxx_priv*,int,int ,int) ;

__attribute__((used)) static void
ar7240sw_setup_port(struct ar8xxx_priv *priv, int port, u32 members)
{
 return __ar8216_setup_port(priv, port, members, 0);
}
