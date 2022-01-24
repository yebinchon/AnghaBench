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
typedef  scalar_t__ ut64 ;
struct gport {int dummy; } ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct gport*,int /*<<< orphan*/  const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gport*) ; 

__attribute__((used)) static int FUNC3(struct gport *port, RBuffer *request) {
	FUNC2 (port);

	ut64 tmpsz;
	const ut8 *tmp = FUNC0 (request, &tmpsz);
	if (FUNC1 (port, tmp, tmpsz, 100) != tmpsz) {
		return -1;
	}

	return 0;
}