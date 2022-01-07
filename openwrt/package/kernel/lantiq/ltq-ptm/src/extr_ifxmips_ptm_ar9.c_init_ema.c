
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMA_CFG ;
 int EMA_CMDCFG ;
 int EMA_CMD_BASE_ADDR ;
 int EMA_CMD_BUF_LEN ;
 int EMA_DATACFG ;
 int EMA_DATA_BASE_ADDR ;
 int EMA_DATA_BUF_LEN ;
 int EMA_IER ;
 int EMA_READ_BURST ;
 int EMA_WRITE_BURST ;
 int IFX_REG_W32 (int,int ) ;
 int SB_MST_PRI0 ;
 int SB_MST_PRI1 ;

__attribute__((used)) static inline void init_ema(void)
{

    IFX_REG_W32(1, SB_MST_PRI0);
    IFX_REG_W32(1, SB_MST_PRI1);


    IFX_REG_W32((EMA_CMD_BUF_LEN << 16) | (EMA_CMD_BASE_ADDR >> 2), EMA_CMDCFG);
    IFX_REG_W32((EMA_DATA_BUF_LEN << 16) | (EMA_DATA_BASE_ADDR >> 2), EMA_DATACFG);
    IFX_REG_W32(0x000000FF, EMA_IER);
    IFX_REG_W32(EMA_READ_BURST | (EMA_WRITE_BURST << 2), EMA_CFG);
}
