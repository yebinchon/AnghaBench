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
typedef  int /*<<< orphan*/  tmpbuf ;
struct TYPE_3__ {int /*<<< orphan*/ * key; int /*<<< orphan*/  curr; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ STANZA ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int FUNC9(STANZA *s)
{
    char tmpbuf[128];

    if (s->key == NULL) {
        if (!FUNC7(s->key = FUNC1(FUNC4())))
            return 0;
    } else if (!FUNC6(FUNC3(s->key), 0)) {
        return 0;
    }

    /* Read to PEM end line and place content in memory BIO */
    while (FUNC0(s->fp, tmpbuf, sizeof(tmpbuf))) {
        s->curr++;
        if (!FUNC6(FUNC2(s->key, tmpbuf), 0))
            return 0;
        if (FUNC8(tmpbuf, "-----END", 8) == 0)
            return 1;
    }
    FUNC5("Can't find key end");
    return 0;
}