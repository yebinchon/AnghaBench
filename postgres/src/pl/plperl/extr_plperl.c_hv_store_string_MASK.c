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
typedef  int int32 ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  HV ;

/* Variables and functions */
 int /*<<< orphan*/  PG_UTF8 ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static SV **
FUNC4(HV *hv, const char *key, SV *val)
{
	dTHX;
	int32		hlen;
	char	   *hkey;
	SV		  **ret;

	hkey = FUNC2(key, FUNC3(key), PG_UTF8);

	/*
	 * hv_store() recognizes a negative klen parameter as meaning a UTF-8
	 * encoded key.
	 */
	hlen = -(int) FUNC3(hkey);
	ret = FUNC0(hv, hkey, hlen, val, 0);

	if (hkey != key)
		FUNC1(hkey);

	return ret;
}