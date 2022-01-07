
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int AR8216_MIB_FUNC_FLUSH ;
 int ar8xxx_mib_op (struct ar8xxx_priv*,int ) ;

__attribute__((used)) static int
ar8xxx_mib_flush(struct ar8xxx_priv *priv)
{
 return ar8xxx_mib_op(priv, AR8216_MIB_FUNC_FLUSH);
}
