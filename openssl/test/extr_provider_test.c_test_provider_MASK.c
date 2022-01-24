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
typedef  int /*<<< orphan*/  expected_greeting ;
struct TYPE_3__ {char* data; int /*<<< orphan*/  data_size; } ;
typedef  char const OSSL_PROVIDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  OPENSSL_VERSION_STR ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* greeting_request ; 

__attribute__((used)) static int FUNC8(const char *name)
{
    OSSL_PROVIDER *prov = NULL;
    const char *greeting = NULL;
    char expected_greeting[256];

    FUNC0(expected_greeting, sizeof(expected_greeting),
                 "Hello OpenSSL %.20s, greetings from %s!",
                 OPENSSL_VERSION_STR, name);

    return
        FUNC4(prov = FUNC2(NULL, name))
        && FUNC7(FUNC1(prov, greeting_request))
        && FUNC4(greeting = greeting_request[0].data)
        && FUNC5(greeting_request[0].data_size, 0)
        && FUNC6(greeting, expected_greeting)
        && FUNC7(FUNC3(prov));
}