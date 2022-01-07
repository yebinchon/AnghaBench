
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_nand_host {scalar_t__ nf_base; } ;
struct nand_chip {struct s5p_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;


 scalar_t__ S5P_NFCONT ;
 int S5P_NFCONT_nFCE0 ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3_nand_select_chip(struct mtd_info *mtd, int chip)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct s5p_nand_host *host = nand_chip->priv;
 u32 value = readl(host->nf_base + S5P_NFCONT);

 if (chip == -1)
  value |= S5P_NFCONT_nFCE0;
 else
  value &= ~S5P_NFCONT_nFCE0;

 writel(value, host->nf_base + S5P_NFCONT);
}
