
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;


 int AR8216_VTU_OP_FLUSH ;
 int ar8216_vtu_op (struct ar8xxx_priv*,int ,int ) ;

__attribute__((used)) static void
ar8216_vtu_flush(struct ar8xxx_priv *priv)
{
 ar8216_vtu_op(priv, AR8216_VTU_OP_FLUSH, 0);
}
