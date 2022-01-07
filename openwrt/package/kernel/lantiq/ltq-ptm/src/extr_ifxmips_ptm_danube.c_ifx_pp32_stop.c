
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_CTRL_STOP_SET (int) ;
 int IFX_REG_W32 (int ,int ) ;
 int PP32_DBG_CTRL ;

void ifx_pp32_stop(int pp32)
{

    IFX_REG_W32(DBG_CTRL_STOP_SET(1), PP32_DBG_CTRL);
}
