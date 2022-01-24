#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mtk_eth {int foe_table_phys; int /*<<< orphan*/  dev; int /*<<< orphan*/  foe_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MTK_PPE_BNDR_RATE_MASK ; 
 int MTK_PPE_BND_AGE0_NTU_DLTA ; 
 int MTK_PPE_BND_AGE0_NTU_DLTA_MASK ; 
 int MTK_PPE_BND_AGE0_UDP_DLTA ; 
 int MTK_PPE_BND_AGE0_UDP_DLTA_MASK ; 
 int MTK_PPE_BND_AGE1_FIN_DLTA ; 
 int MTK_PPE_BND_AGE1_FIN_DLTA_MASK ; 
 int MTK_PPE_BND_AGE1_TCP_DLTA ; 
 int MTK_PPE_BND_AGE1_TCP_DLTA_MASK ; 
 int MTK_PPE_CAH_CTRL_EN ; 
 int MTK_PPE_CAH_CTRL_X_MODE ; 
 int MTK_PPE_FLOW_CFG_IPV4_GREK_EN ; 
 int MTK_PPE_FLOW_CFG_IPV4_NAPT_EN ; 
 int MTK_PPE_FLOW_CFG_IPV4_NAT_EN ; 
 int MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN ; 
 int MTK_PPE_GLO_CFG_EN ; 
 int MTK_PPE_GLO_CFG_TTL0_DROP ; 
 int MTK_PPE_HASH_SEED ; 
 int MTK_PPE_KA_T ; 
 int MTK_PPE_KA_TCP ; 
 int MTK_PPE_KA_UDP ; 
 int MTK_PPE_NTU_KA ; 
 int /*<<< orphan*/  MTK_PPE_TBL_SZ ; 
 int MTK_PPE_TB_CFG_ENTRY_SZ_64B ; 
 int MTK_PPE_TB_CFG_ENTRY_SZ_MASK ; 
 int MTK_PPE_TB_CFG_FIN_AGE ; 
 int MTK_PPE_TB_CFG_HASH_MODE1 ; 
 int MTK_PPE_TB_CFG_HASH_MODE_MASK ; 
 int MTK_PPE_TB_CFG_KA ; 
 int MTK_PPE_TB_CFG_KA_MASK ; 
 int MTK_PPE_TB_CFG_NTU_AGE ; 
 int MTK_PPE_TB_CFG_SMA_FWD_CPU ; 
 int MTK_PPE_TB_CFG_SMA_MASK ; 
 int MTK_PPE_TB_CFG_TBL_SZ_4K ; 
 int MTK_PPE_TB_CFG_TBL_SZ_MASK ; 
 int MTK_PPE_TB_CFG_TCP_AGE ; 
 int MTK_PPE_TB_CFG_UDP_AGE ; 
 int MTK_PPE_TB_CFG_UNBD_AGE ; 
 int MTK_PPE_UNB_AGE_DLTA ; 
 int MTK_PPE_UNB_AGE_DLTA_MASK ; 
 int MTK_PPE_UNB_AGE_MNP ; 
 int MTK_PPE_UNB_AGE_MNP_MASK ; 
 int /*<<< orphan*/  MTK_REG_PPE_BIND_LMT_0 ; 
 int /*<<< orphan*/  MTK_REG_PPE_BIND_LMT_1 ; 
 int /*<<< orphan*/  MTK_REG_PPE_BNDR ; 
 int /*<<< orphan*/  MTK_REG_PPE_BND_AGE0 ; 
 int /*<<< orphan*/  MTK_REG_PPE_BND_AGE1 ; 
 int /*<<< orphan*/  MTK_REG_PPE_CAH_CTRL ; 
 int /*<<< orphan*/  MTK_REG_PPE_DFT_CPORT ; 
 int /*<<< orphan*/  MTK_REG_PPE_FLOW_CFG ; 
 int /*<<< orphan*/  MTK_REG_PPE_GLO_CFG ; 
 int /*<<< orphan*/  MTK_REG_PPE_HASH_SEED ; 
 int /*<<< orphan*/  MTK_REG_PPE_IP_PROT_CHK ; 
 int /*<<< orphan*/  MTK_REG_PPE_KA ; 
 int /*<<< orphan*/  MTK_REG_PPE_TB_BASE ; 
 int /*<<< orphan*/  MTK_REG_PPE_TB_CFG ; 
 int /*<<< orphan*/  MTK_REG_PPE_UNB_AGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_eth*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_eth*,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_eth*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_eth*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mtk_eth *eth)
{
	int ret;

	ret = FUNC3(eth);
	if (ret)
		return ret;

	/* tell the PPE about the tables base address */
	FUNC7(eth, eth->foe_table_phys, MTK_REG_PPE_TB_BASE);

	/* flush the table */
	FUNC2(eth->foe_table, 0, MTK_PPE_TBL_SZ);

	/* setup hashing */
	FUNC4(eth,
		MTK_PPE_TB_CFG_HASH_MODE_MASK | MTK_PPE_TB_CFG_TBL_SZ_MASK,
		MTK_PPE_TB_CFG_HASH_MODE1 | MTK_PPE_TB_CFG_TBL_SZ_4K,
		MTK_REG_PPE_TB_CFG);

	/* set the default hashing seed */
	FUNC7(eth, MTK_PPE_HASH_SEED, MTK_REG_PPE_HASH_SEED);

	/* each foe entry is 64bytes and is setup by cpu forwarding*/
	FUNC4(eth, MTK_PPE_CAH_CTRL_X_MODE | MTK_PPE_TB_CFG_ENTRY_SZ_MASK |
		MTK_PPE_TB_CFG_SMA_MASK,
		MTK_PPE_TB_CFG_ENTRY_SZ_64B |  MTK_PPE_TB_CFG_SMA_FWD_CPU,
		MTK_REG_PPE_TB_CFG);

	/* set ip proto */
	FUNC7(eth, 0xFFFFFFFF, MTK_REG_PPE_IP_PROT_CHK);

	/* setup caching */
	FUNC4(eth, 0, MTK_PPE_CAH_CTRL_X_MODE, MTK_REG_PPE_CAH_CTRL);
	FUNC4(eth, MTK_PPE_CAH_CTRL_X_MODE, MTK_PPE_CAH_CTRL_EN,
		MTK_REG_PPE_CAH_CTRL);

	/* enable FOE */
	FUNC4(eth, 0, MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN |
		MTK_PPE_FLOW_CFG_IPV4_NAPT_EN | MTK_PPE_FLOW_CFG_IPV4_NAT_EN |
		MTK_PPE_FLOW_CFG_IPV4_GREK_EN,
		MTK_REG_PPE_FLOW_CFG);

	/* setup flow entry un/bind aging */
	FUNC4(eth, 0,
		MTK_PPE_TB_CFG_UNBD_AGE | MTK_PPE_TB_CFG_NTU_AGE |
		MTK_PPE_TB_CFG_FIN_AGE | MTK_PPE_TB_CFG_UDP_AGE |
		MTK_PPE_TB_CFG_TCP_AGE,
		MTK_REG_PPE_TB_CFG);

	FUNC4(eth, MTK_PPE_UNB_AGE_MNP_MASK | MTK_PPE_UNB_AGE_DLTA_MASK,
		MTK_PPE_UNB_AGE_MNP | MTK_PPE_UNB_AGE_DLTA,
		MTK_REG_PPE_UNB_AGE);
	FUNC4(eth, MTK_PPE_BND_AGE0_NTU_DLTA_MASK |
		MTK_PPE_BND_AGE0_UDP_DLTA_MASK,
		MTK_PPE_BND_AGE0_NTU_DLTA | MTK_PPE_BND_AGE0_UDP_DLTA,
		MTK_REG_PPE_BND_AGE0);
	FUNC4(eth, MTK_PPE_BND_AGE1_FIN_DLTA_MASK |
		MTK_PPE_BND_AGE1_TCP_DLTA_MASK,
		MTK_PPE_BND_AGE1_FIN_DLTA | MTK_PPE_BND_AGE1_TCP_DLTA,
		MTK_REG_PPE_BND_AGE1);

	/* setup flow entry keep alive */
	FUNC4(eth, MTK_PPE_TB_CFG_KA_MASK, MTK_PPE_TB_CFG_KA,
		MTK_REG_PPE_TB_CFG);
	FUNC7(eth, MTK_PPE_KA_UDP | MTK_PPE_KA_TCP | MTK_PPE_KA_T, MTK_REG_PPE_KA);

	/* setup flow entry rate limit */
	FUNC7(eth, (0x3fff << 16) | 0x3fff, MTK_REG_PPE_BIND_LMT_0);
	FUNC7(eth, MTK_PPE_NTU_KA | 0x3fff, MTK_REG_PPE_BIND_LMT_1);
	FUNC4(eth, MTK_PPE_BNDR_RATE_MASK, 1, MTK_REG_PPE_BNDR);

	/* enable the PPE */
	FUNC4(eth, 0, MTK_PPE_GLO_CFG_EN, MTK_REG_PPE_GLO_CFG);

#ifdef CONFIG_RALINK
	/* set the default forwarding port to QDMA */
	mtk_w32(eth, 0x0, MTK_REG_PPE_DFT_CPORT);
#else
	/* set the default forwarding port to QDMA */
	FUNC7(eth, 0x55555555, MTK_REG_PPE_DFT_CPORT);
#endif

	/* allow packets with TTL=0 */
	FUNC4(eth, MTK_PPE_GLO_CFG_TTL0_DROP, 0, MTK_REG_PPE_GLO_CFG);

	/* send all traffic from gmac to the ppe */
	FUNC4(eth, 0xffff, 0x4444, FUNC0(0));
	FUNC4(eth, 0xffff, 0x4444, FUNC0(1));

	FUNC1(eth->dev, "PPE started\n");

#ifdef CONFIG_NET_MEDIATEK_HW_QOS
	mtk_ppe_scheduler(eth, 0, 500000);
	mtk_ppe_scheduler(eth, 1, 500000);
	mtk_ppe_queue(eth, 0, 0, 7, 32, 250000, 0);
	mtk_ppe_queue(eth, 1, 0, 7, 32, 250000, 0);
	mtk_ppe_queue(eth, 8, 1, 7, 32, 250000, 0);
	mtk_ppe_queue(eth, 9, 1, 7, 32, 250000, 0);
#endif

	return 0;
}