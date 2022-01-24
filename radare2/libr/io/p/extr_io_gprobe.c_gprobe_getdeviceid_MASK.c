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
struct gport {scalar_t__ (* get_reply ) (struct gport*,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ;scalar_t__ (* send_request ) (struct gport*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* frame ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  const GPROBE_GET_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct gport*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct gport*,int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9 (struct gport *port, ut8 index) {
	if (!port) {
		return -1;
	}
	RBuffer *request = FUNC4 ();
	RBuffer *reply = FUNC4 ();
	const ut8 cmd = GPROBE_GET_DEVICE_ID;

	if (!request || !reply) {
		goto fail;
	}

	FUNC2 (request, &cmd, 1);
	FUNC2 (request, &index, 1);

	port->frame (request);

	if (port->send_request (port, request)) {
		goto fail;
	}

	if (port->get_reply (port, cmd, reply)) {
		goto fail;
	}

	char *s = FUNC5 (reply);
	if (s) {
		FUNC1 ("%s\n", s);
		FUNC0 (s);
	}

	FUNC3 (request);
	FUNC3 (reply);

	return 0;

fail:
	FUNC3 (request);
	FUNC3 (reply);
	return -1;
}