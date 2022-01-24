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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  ghbndata ; 
 struct hostent* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ proxychains_resolver ; 
 struct hostent* FUNC3 (char const*) ; 

struct hostent *FUNC4(const char *name) {
	FUNC0();
	FUNC1("gethostbyname: %s\n", name);

	if(proxychains_resolver)
		return FUNC2(name, &ghbndata);
	else
		return FUNC3(name);

	return NULL;
}