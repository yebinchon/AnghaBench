
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 int ar8xxx_rmw (struct ar8xxx_priv*,int,int ,int ) ;

__attribute__((used)) static inline void
ar8xxx_reg_clear(struct ar8xxx_priv *priv, int reg, u32 val)
{
 ar8xxx_rmw(priv, reg, val, 0);
}
