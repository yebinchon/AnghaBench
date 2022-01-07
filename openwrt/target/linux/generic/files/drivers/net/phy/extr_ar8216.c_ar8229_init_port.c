
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int __ar8216_init_port (struct ar8xxx_priv*,int,int,int) ;

__attribute__((used)) static void
ar8229_init_port(struct ar8xxx_priv *priv, int port)
{
 __ar8216_init_port(priv, port, 1, 1);
}
