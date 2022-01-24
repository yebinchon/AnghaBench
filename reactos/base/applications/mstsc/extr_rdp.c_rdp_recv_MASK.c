#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint16 ;
struct TYPE_7__ {int /*<<< orphan*/ * p; int /*<<< orphan*/ * end; } ;
typedef  TYPE_1__* STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * g_next_packet ; 
 int /*<<< orphan*/  g_packetno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int*) ; 

__attribute__((used)) static STREAM
FUNC6(uint8 * type)
{
	static STREAM rdp_s;
	uint16 length, pdu_type;
	uint8 rdpver;

	if ((rdp_s == NULL) || (g_next_packet >= rdp_s->end) || (g_next_packet == NULL))
	{
		rdp_s = FUNC5(&rdpver);
		if (rdp_s == NULL)
			return NULL;
		if (rdpver == 0xff)
		{
			g_next_packet = rdp_s->end;
			*type = 0;
			return rdp_s;
		}
		else if (rdpver != 3)
		{
			/* rdp5_process should move g_next_packet ok */
			FUNC4(rdp_s);
			*type = 0;
			return rdp_s;
		}

		g_next_packet = rdp_s->p;
	}
	else
	{
		rdp_s->p = g_next_packet;
	}

	FUNC2(rdp_s, length);
	/* 32k packets are really 8, keepalive fix */
	if (length == 0x8000)
	{
		g_next_packet += 8;
		*type = 0;
		return rdp_s;
	}
	FUNC2(rdp_s, pdu_type);
	FUNC3(rdp_s, 2);	/* userid */
	*type = pdu_type & 0xf;

#ifdef WITH_DEBUG
	DEBUG(("RDP packet #%d, (type %x)\n", ++g_packetno, *type));
	hexdump(g_next_packet, length);
#endif /*  */

	g_next_packet += length;
	return rdp_s;
}