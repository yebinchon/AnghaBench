#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int write_flag; scalar_t__ cntr; TYPE_2__* ptrbuf; } ;
struct TYPE_10__ {TYPE_1__ pcommon; int /*<<< orphan*/  ssl; struct TYPE_10__* pssl; } ;
typedef  TYPE_2__ uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ uint16 ;
typedef  TYPE_2__* pmbedtls_msg ;
typedef  TYPE_2__ espconn_msg ;

/* Variables and functions */
 int ESPCONN_OK ; 
 int MBEDTLS_ERR_SSL_WANT_WRITE ; 
 scalar_t__ MBEDTLS_SSL_PLAIN_ADD ; 
 int /*<<< orphan*/  NETCONN_EVENT_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lwIPThreadPrio ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__) ; 

void FUNC4(void *arg, uint8 *psent, uint16 length)
{
	espconn_msg *Threadmsg = arg;
	uint16 out_msglen = length;
	int ret = ESPCONN_OK;
	FUNC1(Threadmsg);
	FUNC1(psent);
	FUNC1(length);
	pmbedtls_msg mbedTLSMsg = Threadmsg->pssl;
	FUNC1(mbedTLSMsg);

	if (length > MBEDTLS_SSL_PLAIN_ADD){
		out_msglen = MBEDTLS_SSL_PLAIN_ADD;
	}

	Threadmsg->pcommon.write_flag = true;
	ret = FUNC3(&mbedTLSMsg->ssl, psent, out_msglen);
	if (ret > 0){
		Threadmsg->pcommon.ptrbuf = psent + ret;
		Threadmsg->pcommon.cntr = length - ret;
	} else{
		if (ret == MBEDTLS_ERR_SSL_WANT_WRITE || ret == 0) {

		} else{
			FUNC2(Threadmsg, ret);
			FUNC0(lwIPThreadPrio, NETCONN_EVENT_CLOSE,(uint32)Threadmsg);
		}
	}

}