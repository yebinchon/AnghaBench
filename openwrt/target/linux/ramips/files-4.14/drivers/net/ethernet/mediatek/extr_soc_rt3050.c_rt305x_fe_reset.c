
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RT305X_RESET_FE ;
 int fe_reset (int ) ;

__attribute__((used)) static void rt305x_fe_reset(void)
{
 fe_reset(RT305X_RESET_FE);
}
