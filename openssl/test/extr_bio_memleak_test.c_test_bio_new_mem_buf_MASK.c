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
typedef  int /*<<< orphan*/  BUF_MEM ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(void)
{
    int ok = 0;
    BIO *bio;
    BUF_MEM *bufmem;
    char data[16];

    bio = FUNC2("Hello World\n", 12);
    if (!FUNC10(bio))
        goto finish;
    if (!FUNC6(FUNC3(bio, data, 5), 5))
        goto finish;
    if (!FUNC9(data, 5, "Hello", 5))
        goto finish;
    if (!FUNC7(FUNC1(bio, &bufmem), 0))
        goto finish;
    if (!FUNC8(FUNC5(bio, "test", 4), 0))
        goto finish;
    if (!FUNC6(FUNC3(bio, data, 16), 7))
        goto finish;
    if (!FUNC9(data, 7, " World\n", 7))
        goto finish;
    if (!FUNC7(FUNC4(bio), 0))
        goto finish;
    if (!FUNC6(FUNC3(bio, data, 16), 12))
        goto finish;
    if (!FUNC9(data, 12, "Hello World\n", 12))
        goto finish;
    ok = 1;

finish:
    FUNC0(bio);
    return ok;
}