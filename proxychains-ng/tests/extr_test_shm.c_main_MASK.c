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
struct stringpool {char* start; int alloced; size_t used; } ;
typedef  int /*<<< orphan*/  buf4096 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct stringpool*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct stringpool*) ; 

int FUNC5() {
	char buf4096[4096];
	struct stringpool sp;
	FUNC4(&sp);
	char *r;
	size_t pos = 0;
	r = FUNC3(&sp, FUNC2("AAAAA"));
	FUNC0(r == sp.start);
	
	pos += FUNC1("AAAAA");
	FUNC0(sp.alloced == 4096);
	FUNC0(sp.used == pos);
	
	r = FUNC3(&sp, buf4096, sizeof(buf4096));
	FUNC0(r == sp.start + pos);
	
	pos += sizeof(buf4096);
	FUNC0(sp.alloced == 4096 * 2);
	FUNC0(sp.used == pos);
	
	r = FUNC3(&sp, buf4096, 4096 - FUNC1("AAAAA"));
	FUNC0(r == sp.start + pos);
	pos += 4096 - FUNC1("AAAAA");
	FUNC0(pos == 4096 * 2);

	FUNC0(sp.alloced == 4096 * 2);
	FUNC0(sp.used == pos);
	
	
	
	return 0;
	
}