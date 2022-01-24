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
struct rx_descriptor {int own; size_t datalen; scalar_t__ c; scalar_t__ byteoff; } ;
struct atm_vcc {int /*<<< orphan*/  (* push_oam ) (struct atm_vcc*,struct uni_cell_header*) ;} ;
struct TYPE_6__ {unsigned int vlddes; } ;
struct TYPE_5__ {size_t oam_desc_pos; struct rx_descriptor* oam_desc; int /*<<< orphan*/  wrx_drop_oam; int /*<<< orphan*/  wrx_oam; TYPE_1__* conn; int /*<<< orphan*/ * oam_buf; } ;
struct TYPE_4__ {struct atm_vcc* vcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,int,int,size_t) ; 
 scalar_t__ ATM_PTI_E2EF5 ; 
 scalar_t__ ATM_PTI_SEGF5 ; 
 int /*<<< orphan*/  CELL_SIZE ; 
 int /*<<< orphan*/  RX_DMA_CH_OAM ; 
 size_t RX_DMA_CH_OAM_BUF_SIZE ; 
 size_t RX_DMA_CH_OAM_DESC_LEN ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__ g_atm_priv_data ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct atm_vcc*,struct uni_cell_header*) ; 

__attribute__((used)) static inline void FUNC9(void)
{
	unsigned int vlddes = FUNC1(RX_DMA_CH_OAM)->vlddes;
	struct rx_descriptor reg_desc;
	struct uni_cell_header *header;
	int conn;
	struct atm_vcc *vcc;
	unsigned int i;

	for ( i = 0; i < vlddes; i++ ) {
		unsigned int loop_count = 0;

		do {
			reg_desc = g_atm_priv_data.oam_desc[g_atm_priv_data.oam_desc_pos];
			if ( ++loop_count == 1000 )
				break;
		} while ( reg_desc.own || !reg_desc.c );    //  keep test OWN and C bit until data is ready
		FUNC0(loop_count == 1, "loop_count = %u, own = %d, c = %d, oam_desc_pos = %u", loop_count, (int)reg_desc.own, (int)reg_desc.c, g_atm_priv_data.oam_desc_pos);

		header = (struct uni_cell_header *)&g_atm_priv_data.oam_buf[g_atm_priv_data.oam_desc_pos * RX_DMA_CH_OAM_BUF_SIZE];

		if ( header->pti == ATM_PTI_SEGF5 || header->pti == ATM_PTI_E2EF5 )
			conn = FUNC5(header->vpi, header->vci);
		else if ( header->vci == 0x03 || header->vci == 0x04 )
			conn = FUNC4(header->vpi);
		else
			conn = -1;

		if ( conn >= 0 && g_atm_priv_data.conn[conn].vcc != NULL ) {
			vcc = g_atm_priv_data.conn[conn].vcc;

			if ( vcc->push_oam != NULL )
				vcc->push_oam(vcc, header);
			else
				FUNC6((unsigned char *)header);

			g_atm_priv_data.wrx_oam++;

			FUNC2();
		} else
			g_atm_priv_data.wrx_drop_oam++;

		reg_desc.byteoff = 0;
		reg_desc.datalen = RX_DMA_CH_OAM_BUF_SIZE;
		reg_desc.own = 1;
		reg_desc.c   = 0;

		g_atm_priv_data.oam_desc[g_atm_priv_data.oam_desc_pos] = reg_desc;
		if ( ++g_atm_priv_data.oam_desc_pos == RX_DMA_CH_OAM_DESC_LEN )
			g_atm_priv_data.oam_desc_pos = 0;

		FUNC3((unsigned long)header, CELL_SIZE);
		FUNC7(RX_DMA_CH_OAM, 0);
	}
}