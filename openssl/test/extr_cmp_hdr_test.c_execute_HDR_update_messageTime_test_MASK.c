#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  messageTime; } ;
struct TYPE_4__ {TYPE_2__* hdr; } ;
typedef  TYPE_1__ CMP_HDR_TEST_FIXTURE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct tm*) ; 
 int FUNC1 (int) ; 
 struct tm* FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (struct tm*) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(CMP_HDR_TEST_FIXTURE *fixture)
{
    struct tm hdrtm;
    time_t hdrtime, before, after, now;

    now = FUNC5(NULL);
    before = FUNC3(FUNC2(&now));
    if (!FUNC1(FUNC4(fixture->hdr)))
        return 0;
    if (!FUNC1(FUNC0(fixture->hdr->messageTime, &hdrtm)))
        return 0;

    hdrtime = FUNC3(&hdrtm);
    if (!FUNC1(before <= hdrtime))
        return 0;
    now = FUNC5(NULL);
    after = FUNC3(FUNC2(&now));
    return FUNC1(hdrtime <= after);
}