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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct gport {scalar_t__ (* get_reply ) (struct gport*,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ;scalar_t__ (* send_request ) (struct gport*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* frame ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  GPROBE_GET_INFORMATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct gport*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct gport*,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8 (struct gport *port) {
	if (!port) {
		return -1;
	}
	RBuffer *request = FUNC3 ();
	RBuffer *reply = FUNC3 ();
	const ut8 cmd = GPROBE_GET_INFORMATION;
	const ut8 index = 0;

	if (!request || !reply) {
		goto fail;
	}

	FUNC0 (request, &cmd, 1);
	FUNC0 (request, &index, 1);

	port->frame (request);

	if (port->send_request (port, request)) {
		goto fail;
	}

	if (port->get_reply (port, cmd, reply)) {
		goto fail;
	}

	ut64 tmpsz;
	const ut8 *tmp = FUNC1 (reply, &tmpsz);
	FUNC4 (NULL, 0, tmp, tmpsz, 16, 1, 1);

	FUNC2 (request);
	FUNC2 (reply);

	return 0;

fail:
	FUNC2 (request);
	FUNC2 (reply);
	return -1;
}