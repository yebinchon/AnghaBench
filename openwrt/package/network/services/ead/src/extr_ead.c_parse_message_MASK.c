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
struct TYPE_5__ {int /*<<< orphan*/  sid; int /*<<< orphan*/  type; } ;
struct ead_packet {TYPE_1__ msg; } ;
struct ead_msg_user {int dummy; } ;
struct ead_msg_number {int dummy; } ;
struct ead_msg_encrypted {int dummy; } ;
struct ead_msg_cmd {int dummy; } ;
struct ead_msg_auth {int dummy; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  sid; int /*<<< orphan*/  nid; void* type; void* magic; } ;
struct TYPE_7__ {TYPE_2__ msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int EAD_INSTANCE_MASK ; 
 int EAD_INSTANCE_SHIFT ; 
 int EAD_MAGIC ; 
#define  EAD_TYPE_GET_PRIME 133 
#define  EAD_TYPE_PING 132 
#define  EAD_TYPE_SEND_A 131 
#define  EAD_TYPE_SEND_AUTH 130 
#define  EAD_TYPE_SEND_CMD 129 
#define  EAD_TYPE_SET_USERNAME 128 
 int /*<<< orphan*/  FUNC1 (struct ead_packet*) ; 
 int FUNC2 (struct ead_packet*,int,int*) ; 
 int FUNC3 (struct ead_packet*,int,int*) ; 
 int FUNC4 (struct ead_packet*,int,int*) ; 
 int FUNC5 (struct ead_packet*,int,int*) ; 
 int FUNC6 (struct ead_packet*,int,int*) ; 
 int FUNC7 (struct ead_packet*,int,int*) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__* instance ; 
 int /*<<< orphan*/  nid ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_3__* pktbuf ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int state ; 

__attribute__((used)) static void
FUNC13(struct ead_packet *pkt, int len)
{
	bool (*handler)(struct ead_packet *pkt, int len, int *nstate);
	int min_len = sizeof(struct ead_packet);
	int nstate = state;
	int type = FUNC10(pkt->msg.type);

	if ((type >= EAD_TYPE_GET_PRIME) &&
		(state != type))
		return;

	if ((type != EAD_TYPE_PING) &&
		((FUNC11(pkt->msg.sid) & EAD_INSTANCE_MASK) >>
		 EAD_INSTANCE_SHIFT) != instance->id)
		return;

	switch(type) {
	case EAD_TYPE_PING:
		handler = handle_ping;
		break;
	case EAD_TYPE_SET_USERNAME:
		handler = handle_set_username;
		min_len += sizeof(struct ead_msg_user);
		break;
	case EAD_TYPE_GET_PRIME:
		handler = handle_get_prime;
		break;
	case EAD_TYPE_SEND_A:
		handler = handle_send_a;
		min_len += sizeof(struct ead_msg_number);
		break;
	case EAD_TYPE_SEND_AUTH:
		handler = handle_send_auth;
		min_len += sizeof(struct ead_msg_auth);
		break;
	case EAD_TYPE_SEND_CMD:
		handler = handle_send_cmd;
		min_len += sizeof(struct ead_msg_cmd) + sizeof(struct ead_msg_encrypted);
		break;
	default:
		return;
	}

	if (len < min_len) {
		FUNC0(2, "discarding packet: message too small\n");
		return;
	}

	pktbuf->msg.magic = FUNC8(EAD_MAGIC);
	pktbuf->msg.type = FUNC8(type + 1);
	pktbuf->msg.nid = FUNC9(nid);
	pktbuf->msg.sid = pkt->msg.sid;
	pktbuf->msg.len = 0;

	if (handler(pkt, len, &nstate)) {
		FUNC0(2, "sending response to packet type %d: %d\n", type + 1, FUNC10(pktbuf->msg.len));
		/* format response packet */
		FUNC1(pkt);
	}
	FUNC12(nstate);
}