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
struct RtfData {int dummy; } ;
typedef  int /*<<< orphan*/  HLPFILE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct RtfData*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 

__attribute__((used)) static  BOOL    FUNC5(struct RtfData* rd, HLPFILE *hlpfile,
                                         unsigned index)
{
    char        tmp[16];
    BYTE        *ref, *end;

    FUNC2("Loading picture #%d\n", index);

    FUNC4(tmp, "|bm%u", index);

    if (!FUNC0(hlpfile, tmp, &ref, &end)) {FUNC3("no sub file\n"); return FALSE;}

    ref += 9;
    return FUNC1(rd, hlpfile, ref, end - ref);
}