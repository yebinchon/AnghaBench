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
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  genctx; int /*<<< orphan*/  keyname; } ;
typedef  TYPE_1__ KEYGEN_TEST_DATA ;
typedef  TYPE_2__ EVP_TEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(EVP_TEST *t,
                             const char *keyword, const char *value)
{
    KEYGEN_TEST_DATA *keygen = t->data;

    if (FUNC3(keyword, "KeyName") == 0)
        return FUNC1(keygen->keyname = FUNC0(value));
    if (FUNC3(keyword, "Ctrl") == 0)
        return FUNC2(t, keygen->genctx, value);
    return 0;
}