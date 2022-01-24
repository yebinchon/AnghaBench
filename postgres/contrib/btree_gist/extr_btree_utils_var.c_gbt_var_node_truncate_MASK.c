#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
typedef  int /*<<< orphan*/  gbtree_vinfo ;
struct TYPE_3__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
typedef  TYPE_1__ GBT_VARKEY_R ;
typedef  char GBT_VARKEY ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 (char*) ; 
 int VARHDRSZ ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static GBT_VARKEY *
FUNC8(const GBT_VARKEY *node, int32 cpf_length, const gbtree_vinfo *tinfo)
{
	GBT_VARKEY *out = NULL;
	GBT_VARKEY_R r = FUNC5(node);
	int32		len1 = FUNC4(r.lower) - VARHDRSZ;
	int32		len2 = FUNC4(r.upper) - VARHDRSZ;
	int32		si;
	char	   *out2;

	len1 = FUNC1(len1, (cpf_length + 1));
	len2 = FUNC1(len2, (cpf_length + 1));

	si = 2 * VARHDRSZ + FUNC0(len1 + VARHDRSZ) + len2;
	out = (GBT_VARKEY *) FUNC7(si);
	FUNC2(out, si);

	FUNC6(FUNC3(out), r.lower, len1 + VARHDRSZ);
	FUNC2(FUNC3(out), len1 + VARHDRSZ);

	out2 = FUNC3(out) + FUNC0(len1 + VARHDRSZ);
	FUNC6(out2, r.upper, len2 + VARHDRSZ);
	FUNC2(out2, len2 + VARHDRSZ);

	return out;
}