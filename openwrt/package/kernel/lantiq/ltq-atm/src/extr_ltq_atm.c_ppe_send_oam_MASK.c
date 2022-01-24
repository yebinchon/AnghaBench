#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uni_cell_header {scalar_t__ pti; int vci; int /*<<< orphan*/  vpi; } ;
struct tx_descriptor {unsigned int dataptr; int iscell; int own; int c; int sop; int eop; scalar_t__ byteoff; int /*<<< orphan*/  datalen; int /*<<< orphan*/  member_0; } ;
struct sk_buff {scalar_t__ data; } ;
struct atm_vcc {TYPE_1__* stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  wtx_oam; TYPE_2__* conn; int /*<<< orphan*/  wtx_drop_oam; int /*<<< orphan*/  wtx_err_oam; } ;
struct TYPE_5__ {struct tx_descriptor* tx_desc; struct sk_buff** tx_skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 scalar_t__ ATM_PTI_E2EF5 ; 
 scalar_t__ ATM_PTI_SEGF5 ; 
 int /*<<< orphan*/  CELL_SIZE ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct atm_vcc*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__ g_atm_priv_data ; 
 int /*<<< orphan*/  g_showtime ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct atm_vcc *vcc, void *cell, int flags)
{
	int conn;
	struct uni_cell_header *uni_cell_header = (struct uni_cell_header *)cell;
	int desc_base;
	struct sk_buff *skb;
	struct tx_descriptor reg_desc = {0};

	if ( ((uni_cell_header->pti == ATM_PTI_SEGF5 || uni_cell_header->pti == ATM_PTI_E2EF5)
			&& FUNC7(uni_cell_header->vpi, uni_cell_header->vci) < 0)
			|| ((uni_cell_header->vci == 0x03 || uni_cell_header->vci == 0x04)
			&& FUNC6(uni_cell_header->vpi) < 0) )
	{
		g_atm_priv_data.wtx_err_oam++;
		return -EINVAL;
	}

	if ( !g_showtime ) {
		FUNC11("not in showtime\n");
		g_atm_priv_data.wtx_drop_oam++;
		return -EIO;
	}

	conn = FUNC5(vcc);
	if ( conn < 0 ) {
		FUNC11("FIND_VCC_FAIL\n");
		g_atm_priv_data.wtx_drop_oam++;
		return -EINVAL;
	}

	skb = FUNC1(CELL_SIZE);
	if ( skb == NULL ) {
		FUNC11("ALLOC_SKB_TX_FAIL\n");
		g_atm_priv_data.wtx_drop_oam++;
		return -ENOMEM;
	}
	FUNC12(skb, CELL_SIZE);
	FUNC10(skb->data, cell, CELL_SIZE);

	reg_desc.dataptr = (unsigned int)skb->data >> 2;
	reg_desc.datalen = CELL_SIZE;
	reg_desc.byteoff = 0;
	reg_desc.iscell  = 1;

	reg_desc.own = 1;
	reg_desc.c = 1;
	reg_desc.sop = reg_desc.eop = 1;

	desc_base = FUNC8(conn);
	if ( desc_base < 0 ) {
		FUNC3(skb);
		FUNC11("ALLOC_TX_CONNECTION_FAIL\n");
		g_atm_priv_data.wtx_drop_oam++;
		return -EIO;
	}

	if ( vcc->stats )
		FUNC2(&vcc->stats->tx);

	/*  update descriptor send pointer  */
	if ( g_atm_priv_data.conn[conn].tx_skb[desc_base] != NULL )
		FUNC3(g_atm_priv_data.conn[conn].tx_skb[desc_base]);
	g_atm_priv_data.conn[conn].tx_skb[desc_base] = skb;

	/*  write discriptor to memory and write back cache */
	g_atm_priv_data.conn[conn].tx_desc[desc_base] = reg_desc;
	FUNC4((unsigned long)skb->data, CELL_SIZE);

	FUNC9(conn, 1);

	g_atm_priv_data.wtx_oam++;
	FUNC0();

	return 0;
}