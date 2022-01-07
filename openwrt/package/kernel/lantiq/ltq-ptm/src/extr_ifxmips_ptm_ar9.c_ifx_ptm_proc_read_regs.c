
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int DM_RXCB ;
 int DM_RXCFG ;
 int DM_RXDB ;
 int DM_RXPGCNT ;
 int DM_RXPKTCNT ;
 int DS_RXCB ;
 int DS_RXCFG ;
 int DS_RXDB ;
 int DS_RXPGCNT ;
 int EMA_CFG ;
 int EMA_CMDCFG ;
 int EMA_DATACFG ;
 int EMA_IER ;
 int FFSM_CFG0 ;
 int FFSM_CFG1 ;
 int FFSM_DBA0 ;
 int FFSM_DBA1 ;
 int FFSM_IDLE_HEAD_BC0 ;
 int FFSM_IDLE_HEAD_BC1 ;
 int IFX_REG_R32 (int ) ;
 int MBOX_IGU1_IER ;
 int MBOX_IGU1_ISR ;
 int MBOX_IGU3_IER ;
 int MBOX_IGU3_ISR ;
 int RFBI_CFG ;
 int SB_MST_PRI0 ;
 int SB_MST_PRI1 ;
 int SFSM_CBA0 ;
 int SFSM_CBA1 ;
 int SFSM_CFG0 ;
 int SFSM_CFG1 ;
 int SFSM_DBA0 ;
 int SFSM_DBA1 ;
 scalar_t__ sprintf (char*,char*,...) ;

int ifx_ptm_proc_read_regs(char *page, char **start, off_t off, int count, int *eof, void *data)
{
    int len = 0;

    len += sprintf(page + off + len, "EMA:\n");
    len += sprintf(page + off + len, "  SB_MST_PRI0 - 0x%08X, SB_MST_PRI1 - 0x%08X\n", IFX_REG_R32(SB_MST_PRI0), IFX_REG_R32(SB_MST_PRI1));
    len += sprintf(page + off + len, "  EMA_CMDCFG  - 0x%08X, EMA_DATACFG - 0x%08X\n", IFX_REG_R32(EMA_CMDCFG), IFX_REG_R32(EMA_DATACFG));
    len += sprintf(page + off + len, "  EMA_IER     - 0x%08X, EMA_CFG     - 0x%08X\n", IFX_REG_R32(EMA_IER), IFX_REG_R32(EMA_CFG));

    len += sprintf(page + off + len, "Mailbox:\n");
    len += sprintf(page + off + len, "  MBOX_IGU1_IER - 0x%08X, MBOX_IGU1_ISR - 0x%08X\n", IFX_REG_R32(MBOX_IGU1_IER), IFX_REG_R32(MBOX_IGU1_ISR));
    len += sprintf(page + off + len, "  MBOX_IGU3_IER - 0x%08X, MBOX_IGU3_ISR - 0x%08X\n", IFX_REG_R32(MBOX_IGU3_IER), IFX_REG_R32(MBOX_IGU3_ISR));

    len += sprintf(page + off + len, "TC:\n");
    len += sprintf(page + off + len, "  RFBI_CFG  - 0x%08X\n", IFX_REG_R32(RFBI_CFG));
    len += sprintf(page + off + len, "  SFSM_DBA0 - 0x%08X, SFSM_CBA0 - 0x%08X, SFSM_CFG0 - 0x%08X\n", IFX_REG_R32(SFSM_DBA0), IFX_REG_R32(SFSM_CBA0), IFX_REG_R32(SFSM_CFG0));
    len += sprintf(page + off + len, "  SFSM_DBA1 - 0x%08X, SFSM_CBA1 - 0x%08X, SFSM_CFG1 - 0x%08X\n", IFX_REG_R32(SFSM_DBA1), IFX_REG_R32(SFSM_CBA1), IFX_REG_R32(SFSM_CFG1));
    len += sprintf(page + off + len, "  FFSM_DBA0 - 0x%08X, FFSM_CFG0 - 0x%08X, IDLE_HEAD - 0x%08X\n", IFX_REG_R32(FFSM_DBA0), IFX_REG_R32(FFSM_CFG0), IFX_REG_R32(FFSM_IDLE_HEAD_BC0));
    len += sprintf(page + off + len, "  FFSM_DBA1 - 0x%08X, FFSM_CFG1 - 0x%08X, IDLE_HEAD - 0x%08X\n", IFX_REG_R32(FFSM_DBA1), IFX_REG_R32(FFSM_CFG1), IFX_REG_R32(FFSM_IDLE_HEAD_BC1));

    len += sprintf(page + off + len, "DPlus:\n");
    len += sprintf(page + off + len, "  DM_RXDB    - 0x%08X, DM_RXCB     - 0x%08X, DM_RXCFG - 0x%08X\n", IFX_REG_R32(DM_RXDB), IFX_REG_R32(DM_RXCB), IFX_REG_R32(DM_RXCFG));
    len += sprintf(page + off + len, "  DM_RXPGCNT - 0x%08X, DM_RXPKTCNT - 0x%08X\n", IFX_REG_R32(DM_RXPGCNT), IFX_REG_R32(DM_RXPKTCNT));
    len += sprintf(page + off + len, "  DS_RXDB    - 0x%08X, DS_RXCB     - 0x%08X, DS_RXCFG - 0x%08X\n", IFX_REG_R32(DS_RXDB), IFX_REG_R32(DS_RXCB), IFX_REG_R32(DS_RXCFG));
    len += sprintf(page + off + len, "  DS_RXPGCNT - 0x%08X\n", IFX_REG_R32(DS_RXPGCNT));

    *eof = 1;

    return len;
}
