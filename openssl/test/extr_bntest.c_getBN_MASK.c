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
struct TYPE_4__ {int /*<<< orphan*/  start; int /*<<< orphan*/  test_file; } ;
typedef  TYPE_1__ STANZA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 char* FUNC1 (TYPE_1__*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ **,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static BIGNUM *FUNC4(STANZA *s, const char *attribute)
{
    const char *hex;
    BIGNUM *ret = NULL;

    if ((hex = FUNC1(s, attribute)) == NULL) {
        FUNC0("%s:%d: Can't find %s", s->test_file, s->start, attribute);
        return NULL;
    }

    if (FUNC2(&ret, hex) != (int)FUNC3(hex)) {
        FUNC0("Could not decode '%s'", hex);
        return NULL;
    }
    return ret;
}