#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct espconn {int dummy; } ;
typedef  scalar_t__ sint8 ;
typedef  scalar_t__ sint16 ;
typedef  int netconn_event ;
struct TYPE_5__ {int write_flag; scalar_t__ err; scalar_t__ cntr; int /*<<< orphan*/ * ptrbuf; } ;
struct TYPE_6__ {struct espconn* pespconn; struct espconn* preverse; TYPE_1__ pcommon; scalar_t__ hs_status; } ;
typedef  TYPE_2__ espconn_msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct espconn*) ; 
 int /*<<< orphan*/  FUNC1 (struct espconn*,scalar_t__) ; 
 scalar_t__ ESPCONN_OK ; 
#define  NETCONN_EVENT_CLOSE 129 
#define  NETCONN_EVENT_ERROR 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(void *arg, netconn_event event_type)
{
	espconn_msg *pssl_recon = arg;
    struct espconn *espconn = NULL;
    sint8 ssl_reerr = 0;
    sint16 hs_status = 0;
    FUNC3(pssl_recon);

	espconn = pssl_recon->preverse;
	ssl_reerr = pssl_recon->pcommon.err;
	hs_status = pssl_recon->hs_status;
	if (espconn != NULL) {
		//clear pcommon parameters.
		pssl_recon->pcommon.write_flag = false;
		pssl_recon->pcommon.ptrbuf = NULL;
		pssl_recon->pcommon.cntr = 0;
		pssl_recon->pcommon.err  = 0;
		espconn = pssl_recon->preverse;
	} else {
		espconn = pssl_recon->pespconn;
		FUNC4(pssl_recon);
		pssl_recon = NULL;
	}

	FUNC2();
	switch (event_type){
		case NETCONN_EVENT_ERROR:
			if (hs_status == ESPCONN_OK)
				FUNC1(espconn, ssl_reerr);
			else
				FUNC1(espconn, hs_status);
			break;
		case NETCONN_EVENT_CLOSE:
			if (hs_status == ESPCONN_OK)
				FUNC0(espconn);
			else
				FUNC1(espconn, hs_status);
			break;
		default:
			break;
	}
}