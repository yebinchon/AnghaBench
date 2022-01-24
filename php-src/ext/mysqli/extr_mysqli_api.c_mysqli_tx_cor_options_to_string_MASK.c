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
typedef  int uint32_t ;
struct TYPE_5__ {scalar_t__ s; } ;
typedef  TYPE_1__ smart_str ;
typedef  int /*<<< orphan*/  MYSQL ;

/* Variables and functions */
 int const TRANS_COR_AND_CHAIN ; 
 int const TRANS_COR_AND_NO_CHAIN ; 
 int const TRANS_COR_NO_RELEASE ; 
 int const TRANS_COR_RELEASE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static void FUNC3(const MYSQL * const conn, smart_str * str, const uint32_t mode)
{
	if (mode & TRANS_COR_AND_CHAIN && !(mode & TRANS_COR_AND_NO_CHAIN)) {
		if (str->s && FUNC0(str->s)) {
			FUNC2(str, " ", sizeof(" ") - 1);
		}
		FUNC2(str, "AND CHAIN", sizeof("AND CHAIN") - 1);
	} else if (mode & TRANS_COR_AND_NO_CHAIN && !(mode & TRANS_COR_AND_CHAIN)) {
		if (str->s && FUNC0(str->s)) {
			FUNC2(str, " ", sizeof(" ") - 1);
		}
		FUNC2(str, "AND NO CHAIN", sizeof("AND NO CHAIN") - 1);
	}

	if (mode & TRANS_COR_RELEASE && !(mode & TRANS_COR_NO_RELEASE)) {
		if (str->s && FUNC0(str->s)) {
			FUNC2(str, " ", sizeof(" ") - 1);
		}
		FUNC2(str, "RELEASE", sizeof("RELEASE") - 1);
	} else if (mode & TRANS_COR_NO_RELEASE && !(mode & TRANS_COR_RELEASE)) {
		if (str->s && FUNC0(str->s)) {
			FUNC2(str, " ", sizeof(" ") - 1);
		}
		FUNC2(str, "NO RELEASE", sizeof("NO RELEASE") - 1);
	}
	FUNC1(str);
}