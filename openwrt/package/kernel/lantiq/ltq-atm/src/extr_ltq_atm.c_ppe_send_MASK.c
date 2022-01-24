#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tx_inband_header {int clp; scalar_t__ gfc; int /*<<< orphan*/  vpi; int /*<<< orphan*/  vci; int /*<<< orphan*/  pti; scalar_t__ res1; int /*<<< orphan*/  pad; scalar_t__ cpi; scalar_t__ uu; } ;
struct tx_descriptor {unsigned int dataptr; int datalen; int byteoff; int iscell; int own; int c; int sop; int eop; int /*<<< orphan*/  member_0; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_6__ {scalar_t__ aal; } ;
struct atm_vcc {int atm_options; TYPE_3__* stats; TYPE_2__ qos; int /*<<< orphan*/  vpi; int /*<<< orphan*/  vci; } ;
struct TYPE_8__ {int /*<<< orphan*/  wtx_drop_pdu; int /*<<< orphan*/  wtx_err_pdu; TYPE_1__* conn; int /*<<< orphan*/  wtx_pdu; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_err; int /*<<< orphan*/  tx; } ;
struct TYPE_5__ {struct tx_descriptor* tx_desc; int /*<<< orphan*/  lock; struct sk_buff** tx_skb; } ;

/* Variables and functions */
 scalar_t__ ATM_AAL5 ; 
 int ATM_ATMOPT_CLP ; 
 int /*<<< orphan*/  ATM_PTI_US0 ; 
 int DATA_BUFFER_ALIGNMENT ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ TX_INBAND_HEADER_LENGTH ; 
 int /*<<< orphan*/  aal5_fill_pattern ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 int FUNC5 (struct atm_vcc*) ; 
 TYPE_4__ g_atm_priv_data ; 
 int /*<<< orphan*/  g_showtime ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC17(struct atm_vcc *vcc, struct sk_buff *skb)
{
	int ret;
	int conn;
	int desc_base;
	int byteoff;
	int required;
	/* the len of the data without offset and header */
	int datalen;
	unsigned long flags;
	struct tx_descriptor reg_desc = {0};
	struct tx_inband_header *header;

	if ( vcc == NULL || skb == NULL )
		return -EINVAL;


	conn = FUNC5(vcc);
	if ( conn < 0 ) {
		ret = -EINVAL;
		goto FIND_VCC_FAIL;
	}

	if ( !g_showtime ) {
		FUNC8("not in showtime\n");
		ret = -EIO;
		goto PPE_SEND_FAIL;
	}

	byteoff = (unsigned int)skb->data & (DATA_BUFFER_ALIGNMENT - 1);
	required = sizeof(*header) + byteoff;
	if (!FUNC12(skb, required)) {
		int expand_by = 0;
		int ret;

		if (FUNC13(skb) < required)
			expand_by = required - FUNC13(skb);

		ret = FUNC11(skb, expand_by, 0, GFP_ATOMIC);
		if (ret) {
			FUNC10("pskb_expand_head failed.\n");
			FUNC1(skb, vcc);
			return ret;
		}
	}

	datalen = skb->len;
	header = (void *)FUNC14(skb, byteoff + TX_INBAND_HEADER_LENGTH);


	if ( vcc->qos.aal == ATM_AAL5 ) {
		/*  setup inband trailer    */
		header->uu   = 0;
		header->cpi  = 0;
		header->pad  = aal5_fill_pattern;
		header->res1 = 0;

		/*  setup cell header   */
		header->clp  = (vcc->atm_options & ATM_ATMOPT_CLP) ? 1 : 0;
		header->pti  = ATM_PTI_US0;
		header->vci  = vcc->vci;
		header->vpi  = vcc->vpi;
		header->gfc  = 0;

		/*  setup descriptor    */
		reg_desc.dataptr = (unsigned int)skb->data >> 2;
		reg_desc.datalen = datalen;
		reg_desc.byteoff = byteoff;
		reg_desc.iscell  = 0;
	} else {
		reg_desc.dataptr = (unsigned int)skb->data >> 2;
		reg_desc.datalen = skb->len;
		reg_desc.byteoff = byteoff;
		reg_desc.iscell  = 1;
	}

	reg_desc.own = 1;
	reg_desc.c = 1;
	reg_desc.sop = reg_desc.eop = 1;

	FUNC15(&g_atm_priv_data.conn[conn].lock, flags);
	desc_base = FUNC6(conn);
	if ( desc_base < 0 ) {
		FUNC16(&g_atm_priv_data.conn[conn].lock, flags);
		FUNC8("ALLOC_TX_CONNECTION_FAIL\n");
		ret = -EIO;
		goto PPE_SEND_FAIL;
	}
	/*  update descriptor send pointer  */
	if ( g_atm_priv_data.conn[conn].tx_skb[desc_base] != NULL )
		FUNC3(g_atm_priv_data.conn[conn].tx_skb[desc_base]);
	g_atm_priv_data.conn[conn].tx_skb[desc_base] = skb;

	FUNC16(&g_atm_priv_data.conn[conn].lock, flags);

	if ( vcc->stats )
		FUNC2(&vcc->stats->tx);
	if ( vcc->qos.aal == ATM_AAL5 )
		g_atm_priv_data.wtx_pdu++;
	/*  write discriptor to memory and write back cache */
	g_atm_priv_data.conn[conn].tx_desc[desc_base] = reg_desc;
	FUNC4((unsigned long)skb->data, skb->len);

	FUNC7(conn, 1);

	FUNC0();

	return 0;

FIND_VCC_FAIL:
	FUNC9("FIND_VCC_FAIL\n");
	g_atm_priv_data.wtx_err_pdu++;
	FUNC3(skb);
	return ret;

PPE_SEND_FAIL:
	if ( vcc->qos.aal == ATM_AAL5 )
		g_atm_priv_data.wtx_drop_pdu++;
	if ( vcc->stats )
		FUNC2(&vcc->stats->tx_err);
	FUNC3(skb);
	return ret;
}