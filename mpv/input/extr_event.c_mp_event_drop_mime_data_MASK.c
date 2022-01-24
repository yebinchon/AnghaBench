#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct input_ctx {int dummy; } ;
typedef  enum mp_dnd_action { ____Placeholder_mp_dnd_action } mp_dnd_action ;
struct TYPE_10__ {int /*<<< orphan*/ * start; scalar_t__ len; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char**,int,char*) ; 
 TYPE_1__ FUNC1 (TYPE_1__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__,char*) ; 
 TYPE_1__ FUNC3 (TYPE_1__) ; 
 char* FUNC4 (void*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (struct input_ctx*,int,char**,int) ; 
 scalar_t__ FUNC6 (struct input_ctx*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct input_ctx *ictx, const char *mime_type,
                            bstr data, enum mp_dnd_action action)
{
    // (text lists are the only format supported right now)
    if (FUNC6(ictx, mime_type) >= 0) {
        void *tmp = FUNC8(NULL);
        int num_files = 0;
        char **files = NULL;
        while (data.len) {
            bstr line = FUNC1(data, &data);
            line = FUNC3(line);
            if (FUNC2(line, "#") || !line.start[0])
                continue;
            char *s = FUNC4(tmp, line);
            FUNC0(tmp, files, num_files, s);
        }
        FUNC5(ictx, num_files, files, action);
        FUNC7(tmp);
        return num_files > 0;
    } else {
        return -1;
    }
}