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
struct TYPE_4__ {char* name; int /*<<< orphan*/  entry; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ param_t ;
struct TYPE_5__ {int /*<<< orphan*/  params; } ;
typedef  TYPE_2__ header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(header_t *header, const char *p)
{
    const char *key = p, *value, *cp = p;
    param_t *param;
    char *name;

    FUNC2("got param %s\n", p);

    while (*key == ' ' || *key == '\t' ) key++;

    cp = FUNC6(key, '=');
    if(!cp)
    {
        FUNC3("malformed parameter - skipping\n");
        return;
    }

    name = FUNC1(FUNC0(), 0, cp - key + 1);
    FUNC5(name, key, cp - key);
    name[cp - key] = '\0';

    value = cp + 1;

    param = FUNC1(FUNC0(), 0, sizeof(*param));
    param->name = name;
    param->value = FUNC7(value);
    FUNC4(&header->params, &param->entry);
}