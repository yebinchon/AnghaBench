
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ar8xxx_priv {int mib_lock; TYPE_1__* chip; } ;
struct TYPE_2__ {unsigned int mib_func; } ;


 int AR8216_MIB_BUSY ;
 int AR8216_MIB_FUNC ;
 int AR8216_MIB_FUNC_S ;
 int ar8xxx_reg_wait (struct ar8xxx_priv*,unsigned int,int ,int ,int) ;
 int ar8xxx_rmw (struct ar8xxx_priv*,unsigned int,int ,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int
ar8xxx_mib_op(struct ar8xxx_priv *priv, u32 op)
{
 unsigned mib_func = priv->chip->mib_func;
 int ret;

 lockdep_assert_held(&priv->mib_lock);


 ar8xxx_rmw(priv, mib_func, AR8216_MIB_FUNC, (op << AR8216_MIB_FUNC_S));


 ret = ar8xxx_reg_wait(priv, mib_func, AR8216_MIB_BUSY, 0, 10);
 if (ret)
  goto out;

 ret = 0;

out:
 return ret;
}
