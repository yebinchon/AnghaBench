
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DM_RXCB ;
 int DM_RXCFG ;
 int DM_RXDB ;
 int DM_RXPGCNT ;
 int DM_RXPKTCNT ;
 int DS_RXCB ;
 int DS_RXCFG ;
 int DS_RXDB ;
 int DS_RXPGCNT ;
 int FFSM_CFG0 ;
 int FFSM_CFG1 ;
 int FFSM_DBA0 ;
 int FFSM_DBA1 ;
 int FFSM_IDLE_HEAD_BC0 ;
 int FFSM_IDLE_HEAD_BC1 ;
 int IFX_REG_R32 (int ) ;
 int IFX_REG_W32 (int,int ) ;
 int IFX_REG_W32_MASK (int ,int,int ) ;
 int RFBI_CFG ;
 int SFSM_CBA0 ;
 int SFSM_CBA1 ;
 int SFSM_CFG0 ;
 int SFSM_CFG1 ;
 int SFSM_DBA0 ;
 int SFSM_DBA1 ;
 int SW_P2_CTL ;
 int udelay (int) ;

__attribute__((used)) static inline void init_atm_tc(void)
{
    IFX_REG_W32(0x0, RFBI_CFG);
    IFX_REG_W32(0x1800, SFSM_DBA0);
    IFX_REG_W32(0x1921, SFSM_DBA1);
    IFX_REG_W32(0x1A42, SFSM_CBA0);
    IFX_REG_W32(0x1A53, SFSM_CBA1);
    IFX_REG_W32(0x14011, SFSM_CFG0);
    IFX_REG_W32(0x14011, SFSM_CFG1);
    IFX_REG_W32(0x1000, FFSM_DBA0);
    IFX_REG_W32(0x1700, FFSM_DBA1);
    IFX_REG_W32(0x3000C, FFSM_CFG0);
    IFX_REG_W32(0x3000C, FFSM_CFG1);
    IFX_REG_W32(0xF0D10000, FFSM_IDLE_HEAD_BC0);
    IFX_REG_W32(0xF0D10000, FFSM_IDLE_HEAD_BC1);
    {
        int i;
        u32 temp;

        temp = IFX_REG_R32(SW_P2_CTL);

        IFX_REG_W32(0x40020000, SW_P2_CTL);
        for (i = 0; i < 200; i++)
            udelay(2000);

        IFX_REG_W32(0x00007028, DM_RXCFG);
        IFX_REG_W32(0x00007028, DS_RXCFG);

        IFX_REG_W32(0x00001100, DM_RXDB);
        IFX_REG_W32(0x00001100, DS_RXDB);

        IFX_REG_W32(0x00001600, DM_RXCB);
        IFX_REG_W32(0x00001600, DS_RXCB);





        IFX_REG_W32(0x0, DM_RXPGCNT);
        IFX_REG_W32(0x0, DS_RXPGCNT);
        IFX_REG_W32(0x0, DM_RXPKTCNT);

        IFX_REG_W32_MASK(0, 0x80000000, DM_RXCFG);
        IFX_REG_W32_MASK(0, 0x8000, DS_RXCFG);

        udelay(2000);
        IFX_REG_W32(temp, SW_P2_CTL);
        udelay(2000);
    }
}
