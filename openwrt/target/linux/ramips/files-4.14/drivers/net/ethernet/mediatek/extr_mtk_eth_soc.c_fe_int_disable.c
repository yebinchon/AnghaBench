
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FE_REG_FE_INT_ENABLE ;
 int fe_reg_r32 (int ) ;
 int fe_reg_w32 (int,int ) ;

__attribute__((used)) static inline void fe_int_disable(u32 mask)
{
 fe_reg_w32(fe_reg_r32(FE_REG_FE_INT_ENABLE) & ~mask,
     FE_REG_FE_INT_ENABLE);

 fe_reg_r32(FE_REG_FE_INT_ENABLE);
}
