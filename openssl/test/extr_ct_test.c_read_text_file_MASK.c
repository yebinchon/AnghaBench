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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int FUNC5(const char *dir, const char *file,
                          char *buffer, int buffer_length)
{
    int len = -1;
    char *file_path = FUNC4(dir, file);

    if (file_path != NULL) {
        BIO *file_io = FUNC1(file_path, "r");

        if (file_io != NULL)
            len = FUNC2(file_io, buffer, buffer_length);
        FUNC0(file_io);
    }

    FUNC3(file_path);
    return len;
}