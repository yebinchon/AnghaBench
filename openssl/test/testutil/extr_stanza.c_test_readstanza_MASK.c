#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* key; char* value; } ;
struct TYPE_5__ {scalar_t__ numpairs; char* buff; int /*<<< orphan*/  curr; int /*<<< orphan*/  start; int /*<<< orphan*/  fp; TYPE_2__* pairs; } ;
typedef  TYPE_1__ STANZA ;
typedef  TYPE_2__ PAIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  TESTMAXPAIRS ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 void* FUNC8 (char*) ; 

int FUNC9(STANZA *s)
{
    PAIR *pp = s->pairs;
    char *p, *equals, *key;
    const char *value;

    for (s->numpairs = 0; FUNC0(s->fp, s->buff, sizeof(s->buff)); ) {
        s->curr++;
        if (!FUNC4(p = FUNC6(s->buff, '\n'))) {
            FUNC2("Line %d too long", s->curr);
            return 0;
        }
        *p = '\0';

        /* Blank line marks end of tests. */
        if (s->buff[0] == '\0')
            break;

        /* Lines starting with a pound sign are ignored. */
        if (s->buff[0] == '#')
            continue;

        /* Parse into key=value */
        if (!FUNC4(equals = FUNC6(s->buff, '='))) {
            FUNC2("Missing = at line %d\n", s->curr);
            return 0;
        }
        *equals++ = '\0';
        if (!FUNC4(key = FUNC8(s->buff))) {
            FUNC2("Empty field at line %d\n", s->curr);
            return 0;
        }
        if ((value = FUNC8(equals)) == NULL)
            value = "";

        if (FUNC7(key, "Title") == 0) {
            FUNC2("Starting \"%s\" tests at line %d", value, s->curr);
            continue;
        }

        if (s->numpairs == 0)
            s->start = s->curr;

        if (FUNC7(key, "PrivateKey") == 0) {
            if (!FUNC5(s))
                return 0;
        }
        if (FUNC7(key, "PublicKey") == 0) {
            if (!FUNC5(s))
                return 0;
        }

        if (!FUNC3(s->numpairs++, TESTMAXPAIRS)
                || !FUNC4(pp->key = FUNC1(key))
                || !FUNC4(pp->value = FUNC1(value)))
            return 0;
        pp++;
    }

    /* If we read anything, return ok. */
    return 1;
}