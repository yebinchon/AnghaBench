#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  const ut8 ;
typedef  int ut32 ;
struct gport {scalar_t__ (* get_reply ) (struct gport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* send_request ) (struct gport*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* frame ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  max_tx_size; } ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  GPROBE_ACK ; 
 int /*<<< orphan*/  const GPROBE_RAM_WRITE_2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct gport*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct gport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8 (struct gport *port, ut32 addr, const ut8 *buf, ut32 count) {
	RBuffer *request = FUNC3 ();
	RBuffer *reply = FUNC3 ();
	const ut8 cmd = GPROBE_RAM_WRITE_2;
	ut8 addr_be[4];
	ut8 count_be[4];

	if (!request || !reply) {
		FUNC2 (request);
		FUNC2 (reply);
		return -1;
	}

	count = FUNC0 (port->max_tx_size, count);

	FUNC4 (addr_be, addr);
	FUNC4 (count_be, count);

	FUNC1 (request, &cmd, 1);
	FUNC1 (request, addr_be, 4);
	FUNC1 (request, buf, count);

	port->frame (request);

	if (port->send_request (port, request)) {
		goto fail;
	}

	if (port->get_reply (port, GPROBE_ACK, reply)) {
		goto fail;
	}

	FUNC2 (request);
	FUNC2 (reply);

	return count;

fail:
	FUNC2 (request);
	FUNC2 (reply);
	return -1;
}