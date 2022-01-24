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
typedef  enum test_return { ____Placeholder_test_return } test_return ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int TEST_PASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int con ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enable_ssl ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum test_return FUNC7(void) {
    char buffer[1024];

    FUNC1();
    con = FUNC2("127.0.0.1", port, false, enable_ssl);
    FUNC0(con);

    FUNC4("stats cachedump 1 0 0\r\n");

    FUNC3(buffer, sizeof(buffer));
    FUNC0(FUNC6(buffer, "END", FUNC5("END")) == 0);

    FUNC4("stats cachedump 200 0 0\r\n");
    FUNC3(buffer, sizeof(buffer));
    FUNC0(FUNC6(buffer, "CLIENT_ERROR", FUNC5("CLIENT_ERROR")) == 0);

    FUNC1();
    con = FUNC2("127.0.0.1", port, false, enable_ssl);
    FUNC0(con);
    return TEST_PASS;
}