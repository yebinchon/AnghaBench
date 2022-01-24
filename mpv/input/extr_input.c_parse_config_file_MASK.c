#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct input_ctx {int /*<<< orphan*/  global; } ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_4__ {scalar_t__ start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_ctx*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_ctx*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (void*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct input_ctx*,int,TYPE_1__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC6 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct input_ctx *ictx, char *file, bool warn)
{
    int r = 0;
    void *tmp = FUNC9(NULL);
    stream_t *s = NULL;

    file = FUNC3(tmp, ictx->global, file);

    s = FUNC5(file, ictx->global);
    if (!s) {
        FUNC0(ictx, "Can't open input config file %s.\n", file);
        goto done;
    }
    FUNC7(s);
    bstr data = FUNC6(s, tmp, 1000000);
    if (data.start) {
        FUNC1(ictx, "Parsing input config file %s\n", file);
        int num = FUNC4(ictx, false, data, file, NULL);
        FUNC1(ictx, "Input config file %s parsed: %d binds\n", file, num);
        r = 1;
    } else {
        FUNC0(ictx, "Error reading input config file %s\n", file);
    }

done:
    FUNC2(s);
    FUNC8(tmp);
    return r;
}