#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  coap_rw_buffer_t ;
struct TYPE_6__ {int /*<<< orphan*/ * p; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {int /*<<< orphan*/  tok; TYPE_1__ content; } ;
typedef  TYPE_2__ coap_packet_t ;
typedef  int /*<<< orphan*/  coap_endpoint_t ;

/* Variables and functions */
 int /*<<< orphan*/  COAP_CONTENTTYPE_APPLICATION_LINKFORMAT ; 
 int COAP_ERR_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  COAP_RSPCODE_CONTENT ; 
 int /*<<< orphan*/  MAX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const coap_endpoint_t *ep, coap_rw_buffer_t *scratch, const coap_packet_t *inpkt, coap_packet_t *outpkt, uint8_t id_hi, uint8_t id_lo)
{
    outpkt->content.p = (uint8_t *)FUNC2(1,MAX_PAYLOAD_SIZE);      // this should be free-ed when outpkt is built in coap_server_respond()
    if(outpkt->content.p == NULL){
        FUNC0("not enough memory\n");
        return COAP_ERR_BUFFER_TOO_SMALL;
    }
    outpkt->content.len = MAX_PAYLOAD_SIZE;
    FUNC1(outpkt->content.p, outpkt->content.len);
    return FUNC3(scratch, outpkt, (const uint8_t *)outpkt->content.p, FUNC4(outpkt->content.p), id_hi, id_lo, &inpkt->tok, COAP_RSPCODE_CONTENT, COAP_CONTENTTYPE_APPLICATION_LINKFORMAT);
}