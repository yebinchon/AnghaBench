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

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SLASH ; 
 int FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(char* path_start,
                               char* path_stop,
                               void (*cb)(char* begin,
                                          char* end,
                                          void* data),
                               void* data)
{
    char *pos = path_stop + FUNC0(path_start);
    cb(path_stop, pos, data);

    while ((pos = FUNC1(pos))[0]) {
        pos = FUNC2(pos, DEFAULT_SLASH);
        if (!pos) {
            /* The last token without trailing slash
             */
            cb(path_stop, path_stop + FUNC3(path_stop), data);
            return;
        }
        cb(path_stop, pos, data);
    }
}