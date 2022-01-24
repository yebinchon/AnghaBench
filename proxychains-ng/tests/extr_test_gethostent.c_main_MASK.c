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
struct hostent {int dummy; } ;

/* Variables and functions */
 struct hostent* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct hostent*) ; 

int FUNC2(int argc, char** argv) {
	struct hostent *hp;
	while((hp = FUNC0())) {
		FUNC1(hp);
	}
	return 0;
}