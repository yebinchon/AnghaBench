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
struct TYPE_3__ {char* data; int /*<<< orphan*/  data_size; } ;
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* greeting_request ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(OSSL_PROVIDER *prov, const char *expected_greeting)
{
    const char *greeting = NULL;
    int ret = 0;

    ret =
        FUNC4(FUNC5(prov))
        && FUNC4(FUNC7(prov, greeting_request))
        && FUNC1(greeting = greeting_request[0].data)
        && FUNC2(greeting_request[0].data_size, 0)
        && FUNC3(greeting, expected_greeting);

    FUNC0("Got this greeting: %s\n", greeting);
    FUNC6(prov);
    return ret;
}