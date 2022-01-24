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
typedef  scalar_t__ utf8_char_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (scalar_t__*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char,size_t) ; 

utf8_char_t* FUNC7(const char* path, size_t* size)
{
    utf8_char_t* data = NULL;
    FILE* file = FUNC1(path, "r");

    if (file) {
        FUNC3(file, 0, SEEK_END);
        size_t file_size = FUNC4(file);
        FUNC3(file, 0, SEEK_SET);

        if (0 == (*size) || file_size <= (*size)) {
            (*size) = 0;
            data = (utf8_char_t*)FUNC5(1 + file_size);
            FUNC6(data, '\0', file_size);

            if (data) {
                utf8_char_t* pos = data;
                size_t bytes_read = 0;

                while (0 < (bytes_read = FUNC2(pos, 1, file_size - (*size), file))) {
                    pos += bytes_read;
                    (*size) += bytes_read;
                }
            }

            FUNC0(file);
        }
    }

    data[*size] = 0;
    return data;
}