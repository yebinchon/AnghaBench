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
 int /*<<< orphan*/  BIO_CLOSE ; 
 int /*<<< orphan*/  BIO_FLAGS_MEM_RDONLY ; 
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(void)
{
    int ok = 0;
    BIO *bio, *bio2 = NULL;
    BUF_MEM *bufmem;
    char data[16];

    bio = FUNC3("Hello World\n", 12);
    if (!FUNC13(bio))
        goto finish;
    if (!FUNC10(FUNC4(bio, data, 5), 5))
        goto finish;
    if (!FUNC12(data, 5, "Hello", 5))
        goto finish;
    if (!FUNC11(FUNC1(bio, &bufmem), 0))
        goto finish;
    (void)FUNC7(bio, BIO_NOCLOSE);

    bio2 = FUNC2(FUNC6());
    if (!FUNC13(bio2))
        goto finish;
    FUNC9(bio2, bufmem, BIO_CLOSE);
    FUNC8(bio2, BIO_FLAGS_MEM_RDONLY);

    if (!FUNC10(FUNC4(bio2, data, 16), 7))
        goto finish;
    if (!FUNC12(data, 7, " World\n", 7))
        goto finish;
    if (!FUNC11(FUNC5(bio2), 0))
        goto finish;
    if (!FUNC10(FUNC4(bio2, data, 16), 7))
        goto finish;
    if (!FUNC12(data, 7, " World\n", 7))
        goto finish;
    ok = 1;

finish:
    FUNC0(bio);
    FUNC0(bio2);
    return ok;
}