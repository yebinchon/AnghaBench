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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_FLAGS_MEM_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(void)
{
    int ok = 0;
    BIO *bio = NULL;
    char data[16];

    bio = FUNC2(FUNC6());
    if (!FUNC11(bio))
        goto finish;
    if (!FUNC8(FUNC3(bio, "Hello World\n"), 12))
        goto finish;

    FUNC7(bio, BIO_FLAGS_MEM_RDONLY);
    if (!FUNC8(FUNC4(bio, data, 16), 12))
        goto finish;
    if (!FUNC10(data, 12, "Hello World\n", 12))
        goto finish;
    if (!FUNC9(FUNC5(bio), 0))
        goto finish;

    FUNC0(bio, BIO_FLAGS_MEM_RDONLY);
    if (!FUNC8(FUNC3(bio, "Hi!\n"), 4))
        goto finish;
    if (!FUNC8(FUNC4(bio, data, 16), 16))
        goto finish;

    if (!FUNC10(data, 16, "Hello World\nHi!\n", 16))
        goto finish;

    ok = 1;

finish:
    FUNC1(bio);
    return ok;
}