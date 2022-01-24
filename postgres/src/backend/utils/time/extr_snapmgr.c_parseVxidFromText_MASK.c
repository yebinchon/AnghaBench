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
struct TYPE_3__ {int /*<<< orphan*/  localTransactionId; int /*<<< orphan*/  backendId; } ;
typedef  TYPE_1__ VirtualTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC7(const char *prefix, char **s, const char *filename,
				  VirtualTransactionId *vxid)
{
	char	   *ptr = *s;
	int			prefixlen = FUNC5(prefix);

	if (FUNC6(ptr, prefix, prefixlen) != 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC2("invalid snapshot data in file \"%s\"", filename)));
	ptr += prefixlen;
	if (FUNC3(ptr, "%d/%u", &vxid->backendId, &vxid->localTransactionId) != 2)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC2("invalid snapshot data in file \"%s\"", filename)));
	ptr = FUNC4(ptr, '\n');
	if (!ptr)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC2("invalid snapshot data in file \"%s\"", filename)));
	*s = ptr + 1;
}