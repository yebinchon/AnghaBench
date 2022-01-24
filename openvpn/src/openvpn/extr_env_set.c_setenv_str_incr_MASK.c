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
struct env_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D_TLS_DEBUG_MED ; 
 int /*<<< orphan*/ * FUNC1 (struct env_set*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t const,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t const,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct env_set*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*) ; 

void
FUNC9(struct env_set *es, const char *name, const char *value)
{
    unsigned int counter = 1;
    const size_t tmpname_len = FUNC8(name) + 5; /* 3 digits counter max */
    char *tmpname = FUNC3(tmpname_len, true, NULL);
    FUNC7(tmpname, name);
    while (NULL != FUNC1(es, tmpname) && counter < 1000)
    {
        FUNC0(FUNC5(tmpname, tmpname_len, "%s_%u", name, counter));
        counter++;
    }
    if (counter < 1000)
    {
        FUNC6(es, tmpname, value);
    }
    else
    {
        FUNC4(D_TLS_DEBUG_MED, "Too many same-name env variables, ignoring: %s", name);
    }
    FUNC2(tmpname);
}