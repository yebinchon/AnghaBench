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
struct gport {scalar_t__ (* get_reply ) (struct gport*,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ;scalar_t__ (* send_request ) (struct gport*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* frame ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  max_rx_size; } ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  const GPROBE_RAM_READ_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct gport*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct gport*,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct gport *port, ut32 addr, ut8 *buf, ut32 count) {
	RBuffer *request = FUNC3 ();
	RBuffer *reply = FUNC3 ();
	const ut8 cmd = GPROBE_RAM_READ_2;
	ut8 addr_be[4];
	ut8 count_be[4];
	int res;

	if (!request || !reply) {
		FUNC2 (request);
		FUNC2 (reply);
		return -1;
	}

	count = FUNC0 (port->max_rx_size, count);

	FUNC6 (addr_be, addr);
	FUNC6 (count_be, count);

	FUNC1 (request, &cmd, 1);
	FUNC1 (request, addr_be, 4);
	FUNC1 (request, count_be, 4);

	port->frame (request);

	if (port->send_request (port, request)) {
		goto fail;
	}

	if (port->get_reply (port, cmd, reply)) {
		goto fail;
	}

	res = FUNC4 (reply, 0, buf, FUNC5 (reply));

	FUNC2 (request);
	FUNC2 (reply);

	return res;

fail:
	FUNC2 (request);
	FUNC2 (reply);
	return -1;
}