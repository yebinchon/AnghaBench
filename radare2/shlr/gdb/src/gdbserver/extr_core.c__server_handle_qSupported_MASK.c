#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ut32 ;
struct TYPE_5__ {int read_max; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC5(libgdbr_t *g) {
	int ret;
	char *buf;
	if (!(buf = FUNC2 (128))) {
		return -1;
	}
	FUNC4 (buf, 127, "PacketSize=%x;QStartNoAckMode+;qXfer:exec-file:read+",
		  (ut32) (g->read_max - 1));
	if ((ret = FUNC1 (g)) < 0) {
		FUNC0 (buf);
		return -1;
	}
	ret = FUNC3 (g, buf);
	FUNC0 (buf);
	return ret;
}