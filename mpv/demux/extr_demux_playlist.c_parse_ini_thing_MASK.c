#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct pl_parser {scalar_t__ probing; } ;
struct TYPE_15__ {int /*<<< orphan*/  len; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (TYPE_1__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__,char*) ; 
 TYPE_1__ FUNC3 (TYPE_1__,int,int) ; 
 scalar_t__ FUNC4 (TYPE_1__,char*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__,char*) ; 
 TYPE_1__ FUNC6 (TYPE_1__) ; 
 scalar_t__ FUNC7 (TYPE_1__,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct pl_parser*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC9 (struct pl_parser*) ; 
 TYPE_1__ FUNC10 (struct pl_parser*) ; 

__attribute__((used)) static int FUNC11(struct pl_parser *p, const char *header,
                           const char *entry)
{
    bstr line = {0};
    while (!line.len && !FUNC9(p))
        line = FUNC6(FUNC10(p));
    if (FUNC7(line, header) != 0)
        return -1;
    if (p->probing)
        return 0;
    while (!FUNC9(p)) {
        line = FUNC6(FUNC10(p));
        bstr key, value;
        if (FUNC4(line, "=", &key, &value) &&
            FUNC1(key, FUNC0(entry)))
        {
            value = FUNC6(value);
            if (FUNC5(value, "\"") && FUNC2(value, "\""))
                value = FUNC3(value, 1, -1);
            FUNC8(p, value);
        }
    }
    return 0;
}