#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
struct TYPE_8__ {int channel; } ;
struct TYPE_9__ {TYPE_1__ hdr; } ;
struct TYPE_10__ {int* data; TYPE_2__ pkt; } ;
struct TYPE_11__ {char* send_buff; int send_len; int channelwr; int /*<<< orphan*/  sock; TYPE_3__ tran; } ;
typedef  TYPE_4__ libqnxr_t ;

/* Variables and functions */
#define  ESC_CHAR 131 
#define  FRAME_CHAR 130 
#define  SET_CHANNEL_DEBUG 129 
#define  SET_CHANNEL_TEXT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC4 (libqnxr_t *g) {
	if (!g) {
		FUNC0 ("Initialize libqnxr_t first\n");
		return -1;
	}

	int i;
	ut8 csum = 0;
	char *p;

	p = g->send_buff;
	*p++ = FRAME_CHAR;

	for (i = 0; i < g->send_len; i++) {
		ut8 c = g->tran.data[i];
		csum += c;

		switch (c) {
		case FRAME_CHAR:
		case ESC_CHAR:
			*p++ = ESC_CHAR;
			c ^= 0x20;
			break;
		}
		*p++ = c;
	}

	csum ^= 0xff;
	switch (csum) {
	case FRAME_CHAR:
	case ESC_CHAR:
		*p++ = ESC_CHAR;
		csum ^= 0x20;
		break;
	}
	*p++ = csum;
	*p++ = FRAME_CHAR;

	if (g->channelwr != g->tran.pkt.hdr.channel) {
		switch (g->tran.pkt.hdr.channel) {
		case SET_CHANNEL_TEXT:
			FUNC2 (g);
			break;
		case SET_CHANNEL_DEBUG:
			FUNC1 (g);
			break;
		}
		g->channelwr = g->tran.pkt.hdr.channel;
	}

	return FUNC3 (g->sock, g->send_buff, p - g->send_buff);
}