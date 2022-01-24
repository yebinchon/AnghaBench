#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  hdr; int /*<<< orphan*/  payload; int /*<<< orphan*/  numopts; int /*<<< orphan*/  opts; int /*<<< orphan*/  tok; } ;
typedef  TYPE_1__ coap_packet_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAXOPT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

int FUNC3(coap_packet_t *pkt, const uint8_t *buf, size_t buflen)
{
    int rc;

    // coap_dump(buf, buflen, false);

    if (0 != (rc = FUNC0(&pkt->hdr, buf, buflen)))
        return rc;
//    coap_dumpHeader(&hdr);
    if (0 != (rc = FUNC2(&pkt->tok, &pkt->hdr, buf, buflen)))
        return rc;
    pkt->numopts = MAXOPT;
    if (0 != (rc = FUNC1(pkt->opts, &(pkt->numopts), &(pkt->payload), &pkt->hdr, buf, buflen)))
        return rc;
//    coap_dumpOptions(opts, numopt);
    return 0;
}