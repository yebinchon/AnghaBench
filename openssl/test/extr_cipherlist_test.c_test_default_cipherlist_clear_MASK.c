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
struct TYPE_3__ {int /*<<< orphan*/  client; int /*<<< orphan*/  server; } ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SSL_R_NO_CIPHER_MATCH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* fixture ; 
 int result ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(void)
{
    FUNC2();
    SSL *s = NULL;

    if (fixture == NULL)
        return 0;

    if (!FUNC7(FUNC3(fixture->server, "no-such"), 0))
        goto end;

    if (!FUNC7(FUNC0(FUNC1()), SSL_R_NO_CIPHER_MATCH))
        goto end;

    s = FUNC5(fixture->client);

    if (!FUNC8(s))
      goto end;

    if (!FUNC7(FUNC6(s, "no-such"), 0))
        goto end;

    if (!FUNC7(FUNC0(FUNC1()),
                SSL_R_NO_CIPHER_MATCH))
        goto end;

    result = 1;
end:
    FUNC4(s);
    FUNC9(fixture);
    return result;
}