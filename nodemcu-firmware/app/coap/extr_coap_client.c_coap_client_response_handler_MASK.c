#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  coap_tid_t ;
struct TYPE_11__ {scalar_t__ p; } ;
struct TYPE_10__ {scalar_t__ t; int code; } ;
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/ * p; } ;
struct TYPE_12__ {TYPE_3__ payload; TYPE_2__ hdr; TYPE_1__ content; } ;
typedef  TYPE_4__ coap_packet_t ;

/* Variables and functions */
 int /*<<< orphan*/  COAP_INVALID_TID ; 
 int FUNC0 (int) ; 
 scalar_t__ COAP_TYPE_CON ; 
 scalar_t__ COAP_TYPE_NONCON ; 
 scalar_t__ COAP_TYPE_RESET ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gQueue ; 

void FUNC10(char *data, unsigned short len, unsigned short size, const uint32_t ip, const uint32_t port)
{
  FUNC1("coap_client_response_handler is called.\n");
  coap_packet_t pkt;
  pkt.content.p = NULL;
  pkt.content.len = 0;
  int rc;

  if (0 != (rc = FUNC4(&pkt, data, len))){
    FUNC1("Bad packet rc=%d\n", rc);
  }
  else
  {
#ifdef COAP_DEBUG
    coap_dumpPacket(&pkt);
#endif
    /* check if this is a response to our original request */
    if (!FUNC2(&pkt)) {
      /* drop if this was just some message, or send RST in case of notification */
      if (pkt.hdr.t == COAP_TYPE_CON || pkt.hdr.t == COAP_TYPE_NONCON){
        // coap_send_rst(pkt);  // send RST response
        // or, just ignore it.
      }
      goto end;
    }

    if (pkt.hdr.t == COAP_TYPE_RESET) {
      FUNC1("got RST\n");
      goto end;
    }

    coap_tid_t id = COAP_INVALID_TID;
    FUNC9(ip, port, &pkt, &id);
    /* transaction done, remove the node from queue */
    // stop timer
    FUNC7();
    // remove the node
    FUNC5(&gQueue, id);
    // calculate time elapsed
    FUNC8(&gQueue);
    FUNC6(&gQueue);

    if (FUNC0(pkt.hdr.code) == 2)
    {
      /* There is no block option set, just read the data and we are done. */
      FUNC1("%d.%02d\t", (pkt.hdr.code >> 5), pkt.hdr.code & 0x1F);
      FUNC1((char *)(pkt.payload.p));
    }
    else if (FUNC0(pkt.hdr.code) >= 4)
    {
      FUNC1("%d.%02d\t", (pkt.hdr.code >> 5), pkt.hdr.code & 0x1F);
      FUNC1((char *)(pkt.payload.p));
    }
  }

end:
  if(!gQueue){ // if there is no node pending in the queue, disconnect from host.

  }
}