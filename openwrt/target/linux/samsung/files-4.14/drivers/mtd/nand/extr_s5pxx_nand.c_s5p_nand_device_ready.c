
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_nand_host {scalar_t__ nf_base; } ;
struct nand_chip {struct s5p_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;


 scalar_t__ S5P_NFSTAT ;
 int S5P_NFSTAT_READY ;
 int readl (scalar_t__) ;

__attribute__((used)) static int s5p_nand_device_ready(struct mtd_info *mtd)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct s5p_nand_host *host = nand_chip->priv;




 return readl(host->nf_base + S5P_NFSTAT) & S5P_NFSTAT_READY;
}
