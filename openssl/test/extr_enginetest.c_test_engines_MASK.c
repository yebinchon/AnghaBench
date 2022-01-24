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
typedef  int /*<<< orphan*/  block ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int NUMTOADD ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(void)
{
    ENGINE *block[NUMTOADD];
    char *eid[NUMTOADD];
    char *ename[NUMTOADD];
    char buf[256];
    ENGINE *ptr;
    int loop;
    int to_return = 0;
    ENGINE *new_h1 = NULL;
    ENGINE *new_h2 = NULL;
    ENGINE *new_h3 = NULL;
    ENGINE *new_h4 = NULL;

    FUNC17(block, 0, sizeof(block));
    if (!FUNC14(new_h1 = FUNC5())
            || !FUNC15(FUNC7(new_h1, "test_id0"))
            || !FUNC15(FUNC8(new_h1, "First test item"))
            || !FUNC14(new_h2 = FUNC5())
            || !FUNC15(FUNC7(new_h2, "test_id1"))
            || !FUNC15(FUNC8(new_h2, "Second test item"))
            || !FUNC14(new_h3 = FUNC5())
            || !FUNC15(FUNC7(new_h3, "test_id2"))
            || !FUNC15(FUNC8(new_h3, "Third test item"))
            || !FUNC14(new_h4 = FUNC5())
            || !FUNC15(FUNC7(new_h4, "test_id3"))
            || !FUNC15(FUNC8(new_h4, "Fourth test item")))
        goto end;
    FUNC13("Engines:");
    FUNC16();

    if (!FUNC15(FUNC0(new_h1)))
        goto end;
    FUNC13("Engines:");
    FUNC16();

    ptr = FUNC2();
    if (!FUNC15(FUNC6(ptr)))
        goto end;
    FUNC1(ptr);
    FUNC13("Engines:");
    FUNC16();

    if (!FUNC15(FUNC0(new_h3))
            || !FUNC15(FUNC0(new_h2)))
        goto end;
    FUNC13("Engines:");
    FUNC16();

    if (!FUNC15(FUNC6(new_h2)))
        goto end;
    FUNC13("Engines:");
    FUNC16();

    if (!FUNC15(FUNC0(new_h4)))
        goto end;
    FUNC13("Engines:");
    FUNC16();

    /* Should fail. */
    if (!FUNC12(FUNC0(new_h3)))
        goto end;
    FUNC9();

    /* Should fail. */
    if (!FUNC12(FUNC6(new_h2)))
        goto end;
    FUNC9();

    if (!FUNC15(FUNC6(new_h3)))
        goto end;
    FUNC13("Engines:");
    FUNC16();

    if (!FUNC15(FUNC6(new_h4)))
        goto end;
    FUNC13("Engines:");
    FUNC16();

    /*
     * At this point, we should have an empty list, unless some hardware
     * support engine got added.  However, since we don't allow the config
     * file to be loaded and don't otherwise load any built in engines,
     * that is unlikely.  Still, we check, if for nothing else, then to
     * notify that something is a little off (and might mean that |new_h1|
     * wasn't unloaded when it should have)
     */
    if ((ptr = FUNC2()) != NULL) {
        if (!FUNC6(ptr))
            FUNC13("Remove failed - probably no hardware support present");
    }
    FUNC1(ptr);
    FUNC13("Engines:");
    FUNC16();

    if (!FUNC15(FUNC0(new_h1))
            || !FUNC15(FUNC6(new_h1)))
        goto end;

    FUNC13("About to beef up the engine-type list");
    for (loop = 0; loop < NUMTOADD; loop++) {
        FUNC18(buf, "id%d", loop);
        eid[loop] = FUNC11(buf);
        FUNC18(buf, "Fake engine type %d", loop);
        ename[loop] = FUNC11(buf);
        if (!FUNC14(block[loop] = FUNC5())
                || !FUNC15(FUNC7(block[loop], eid[loop]))
                || !FUNC15(FUNC8(block[loop], ename[loop])))
            goto end;
    }
    for (loop = 0; loop < NUMTOADD; loop++) {
        if (!FUNC15(FUNC0(block[loop]))) {
            FUNC19("Adding stopped at %d, (%s,%s)",
                      loop, FUNC3(block[loop]),
                      FUNC4(block[loop]));
            goto cleanup_loop;
        }
    }
 cleanup_loop:
    FUNC13("About to empty the engine-type list");
    while ((ptr = FUNC2()) != NULL) {
        if (!FUNC15(FUNC6(ptr)))
            goto end;
        FUNC1(ptr);
    }
    for (loop = 0; loop < NUMTOADD; loop++) {
        FUNC10(eid[loop]);
        FUNC10(ename[loop]);
    }
    to_return = 1;

 end:
    FUNC1(new_h1);
    FUNC1(new_h2);
    FUNC1(new_h3);
    FUNC1(new_h4);
    for (loop = 0; loop < NUMTOADD; loop++)
        FUNC1(block[loop]);
    return to_return;
}