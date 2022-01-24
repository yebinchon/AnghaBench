#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pl_parser {scalar_t__ probing; int /*<<< orphan*/  force; } ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pl_parser*,char*) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pl_parser*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (struct pl_parser*) ; 
 int /*<<< orphan*/  FUNC4 (struct pl_parser*) ; 

__attribute__((used)) static int FUNC5(struct pl_parser *p)
{
    if (!p->force)
        return -1;
    if (p->probing)
        return 0;
    FUNC0(p, "Reading plaintext playlist.\n");
    while (!FUNC3(p)) {
        bstr line = FUNC1(FUNC4(p));
        if (line.len == 0)
            continue;
        FUNC2(p, line);
    }
    return 0;
}