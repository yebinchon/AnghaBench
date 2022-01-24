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
typedef  int /*<<< orphan*/  ut32 ;
struct gport {scalar_t__ (* get_reply ) (struct gport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* send_request ) (struct gport*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* frame ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  GPROBE_ACK ; 
 int /*<<< orphan*/  const GPROBE_RUN_CODE_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct gport*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct gport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7 (struct gport *port, ut32 addr) {
	if (!port) {
		return -1;
	}
	RBuffer *request = FUNC2 ();
	RBuffer *reply = FUNC2 ();
	const ut8 cmd = GPROBE_RUN_CODE_2;
	ut8 addr_be[4];

	if (!request || !reply) {
		goto fail;
	}

	FUNC3 (addr_be, addr);

	FUNC0 (request, &cmd, 1);
	FUNC0 (request, addr_be, 4);

	port->frame (request);

	if (port->send_request (port, request)) {
		goto fail;
	}

	if (port->get_reply (port, GPROBE_ACK, reply)) {
		goto fail;
	}

	FUNC1 (request);
	FUNC1 (reply);

	return 0;

fail:
	FUNC1 (request);
	FUNC1 (reply);
	return -1;
}