#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  scalar_t__ uint32 ;
typedef  int uint16 ;
struct stream {int* p; int* data; int size; int* end; int* rdp_hdr; } ;
struct TYPE_2__ {scalar_t__ hist; struct stream ns; } ;
typedef  struct stream* STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
#define  RDP_DATA_PDU_AUTORECONNECT_STATUS 135 
#define  RDP_DATA_PDU_BELL 134 
#define  RDP_DATA_PDU_CONTROL 133 
#define  RDP_DATA_PDU_DISCONNECT 132 
#define  RDP_DATA_PDU_LOGON 131 
#define  RDP_DATA_PDU_POINTER 130 
#define  RDP_DATA_PDU_SYNCHRONISE 129 
#define  RDP_DATA_PDU_UPDATE 128 
 int RDP_MPPC_COMPRESSED ; 
 scalar_t__ RDP_MPPC_DICT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ g_mppc_dict ; 
 int /*<<< orphan*/  FUNC2 (struct stream*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stream*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stream*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,unsigned char*,scalar_t__) ; 
 int FUNC6 (int*,int,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct stream*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct stream*) ; 
 int /*<<< orphan*/  FUNC9 (struct stream*) ; 
 int /*<<< orphan*/  FUNC10 (struct stream*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int*,scalar_t__) ; 

__attribute__((used)) static RD_BOOL
FUNC15(STREAM s, uint32 * ext_disc_reason)
{
	uint8 data_pdu_type;
	uint8 ctype;
	uint16 clen;
	uint32 len;

	uint32 roff, rlen;

	struct stream *ns = &(g_mppc_dict.ns);

	FUNC4(s, 6);	/* shareid, pad, streamid */
	FUNC2(s, len);
	FUNC3(s, data_pdu_type);
	FUNC3(s, ctype);
	FUNC2(s, clen);
	clen -= 18;

	if (ctype & RDP_MPPC_COMPRESSED)
	{
		if (len > RDP_MPPC_DICT_SIZE)
			FUNC1("error decompressed packet size exceeds max\n");
		if (FUNC6(s->p, clen, ctype, &roff, &rlen) == -1)
			FUNC1("error while decompressing packet\n");

		/* len -= 18; */

		/* allocate memory and copy the uncompressed data into the temporary stream */
		ns->data = (uint8 *) FUNC14(ns->data, rlen);

		FUNC5((ns->data), (unsigned char *) (g_mppc_dict.hist + roff), rlen);

		ns->size = rlen;
		ns->end = (ns->data + ns->size);
		ns->p = ns->data;
		ns->rdp_hdr = ns->p;

		s = ns;
	}

	switch (data_pdu_type)
	{
		case RDP_DATA_PDU_UPDATE:
			FUNC10(s);
			break;

		case RDP_DATA_PDU_CONTROL:
			FUNC0(("Received Control PDU\n"));
			break;

		case RDP_DATA_PDU_SYNCHRONISE:
			FUNC0(("Received Sync PDU\n"));
			break;

		case RDP_DATA_PDU_POINTER:
			FUNC9(s);
			break;

		case RDP_DATA_PDU_BELL:
			FUNC11();
			break;

		case RDP_DATA_PDU_LOGON:
			FUNC0(("Received Logon PDU\n"));
			/* User logged on */
			FUNC8(s);
			break;

		case RDP_DATA_PDU_DISCONNECT:
			FUNC7(s, ext_disc_reason);

			/* We used to return true and disconnect immediately here, but
			 * Windows Vista sends a disconnect PDU with reason 0 when
			 * reconnecting to a disconnected session, and MSTSC doesn't
			 * drop the connection.  I think we should just save the status.
			 */
			break;

		case RDP_DATA_PDU_AUTORECONNECT_STATUS:
			FUNC13("Automatic reconnect using cookie, failed.\n");
			break;

		default:
			FUNC12("data PDU %d\n", data_pdu_type);
	}
	return False;
}