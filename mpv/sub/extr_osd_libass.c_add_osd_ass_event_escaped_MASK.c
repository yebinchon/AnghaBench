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
struct TYPE_3__ {int /*<<< orphan*/  start; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ bstr ;
typedef  int /*<<< orphan*/  ASS_Track ;
typedef  int /*<<< orphan*/  ASS_Event ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ASS_Event *FUNC3(ASS_Track *track, const char *style,
                                            const char *text)
{
    bstr buf = {0};
    FUNC1(&buf, text);
    ASS_Event *e = FUNC0(track, style, buf.start);
    FUNC2(buf.start);
    return e;
}