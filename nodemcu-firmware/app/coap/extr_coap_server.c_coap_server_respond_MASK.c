#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  scratch_raw ;
struct TYPE_11__ {int member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ coap_rw_buffer_t ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/ * p; } ;
struct TYPE_12__ {TYPE_1__ content; } ;
typedef  TYPE_3__ coap_packet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*,size_t*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

size_t FUNC7(char *req, unsigned short reqlen, char *rsp, unsigned short rsplen)
{
  FUNC0("coap_server_respond is called.\n");
  size_t rlen = rsplen;
  coap_packet_t pkt;
  pkt.content.p = NULL;
  pkt.content.len = 0;
  uint8_t scratch_raw[4];
  coap_rw_buffer_t scratch_buf = {scratch_raw, sizeof(scratch_raw)};
  int rc;

#ifdef COAP_DEBUG
  NODE_DBG("Received: ");
  coap_dump(req, reqlen, true);
  NODE_DBG("\n");
#endif

  if (0 != (rc = FUNC5(&pkt, req, reqlen))){
    FUNC0("Bad packet rc=%d\n", rc);
    return 0;
  }
  else
  {
    coap_packet_t rsppkt;
    rsppkt.content.p = NULL;
    rsppkt.content.len = 0;
#ifdef COAP_DEBUG
    coap_dumpPacket(&pkt);
#endif
    FUNC4(&scratch_buf, &pkt, &rsppkt);
    if (0 != (rc = FUNC1(rsp, &rlen, &rsppkt))){
      FUNC0("coap_build failed rc=%d\n", rc);
      // return 0;
      rlen = 0;
    }
    else
    {
#ifdef COAP_DEBUG
      NODE_DBG("Responding: ");
      coap_dump(rsp, rlen, true);
      NODE_DBG("\n");
#endif
#ifdef COAP_DEBUG
      coap_dumpPacket(&rsppkt);
#endif
    }
    if(rsppkt.content.p){
      FUNC6(rsppkt.content.p);
      rsppkt.content.p = NULL;
      rsppkt.content.len = 0;
    }
    return rlen;
  }
}