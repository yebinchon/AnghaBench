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
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int WSDL_NO_STRING_MARKER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,void*) ; 

__attribute__((used)) static void FUNC4(HashTable* ht, void* data, char **in)
{
	int len;

	FUNC0(len, in);
	if (len == WSDL_NO_STRING_MARKER) {
		FUNC2(ht, data);
	} else {
		FUNC3(ht, *in, len, data);
		FUNC1(len, in);
	}
}