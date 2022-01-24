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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  ADDRESS ;

/* Variables and functions */
 int SENDBUFLEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static zend_string* FUNC5(ADDRESS *addresslist)
{
	char address[SENDBUFLEN];

	if (FUNC0(addresslist) >= SENDBUFLEN) {
		FUNC4(NULL, "Address buffer overflow");
		return NULL;
	}
	address[0] = 0;
	FUNC1(address, addresslist);
	return FUNC3(address, FUNC2(address), 0);
}