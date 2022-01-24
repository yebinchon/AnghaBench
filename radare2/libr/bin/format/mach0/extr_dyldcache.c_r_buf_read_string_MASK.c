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
typedef  scalar_t__ ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 scalar_t__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static char *FUNC2(RBuffer *buf, ut64 addr, int len) {
	ut8 *data = FUNC0 (len);
	if (data) {
		FUNC1 (buf, addr, data, len);
		data[len - 1] = 0;
		return (char *)data;
	}
	return NULL;
}