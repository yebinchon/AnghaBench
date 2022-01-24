#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ BUF_MEM ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__**) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(void)
{
    int ok = 0;
    BIO *bio = NULL;
    BUF_MEM *bufmem = NULL;

    bio = FUNC2(FUNC4());
    if (!FUNC10(bio))
        goto finish;
    if (!FUNC7(FUNC3(bio, "Hello World\n"), 12))
        goto finish;
    FUNC1(bio, &bufmem);
    if (!FUNC10(bufmem))
        goto finish;
    if (!FUNC8(FUNC5(bio, BIO_NOCLOSE), 0))
        goto finish;
    FUNC0(bio);
    bio = NULL;
    if (!FUNC9(bufmem->data, bufmem->length, "Hello World\n", 12))
        goto finish;
    ok = 1;

finish:
    FUNC0(bio);
    FUNC6(bufmem);
    return ok;
}