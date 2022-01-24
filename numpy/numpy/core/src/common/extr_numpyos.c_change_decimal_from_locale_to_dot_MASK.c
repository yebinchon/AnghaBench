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
struct lconv {char* decimal_point; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct lconv* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC6(char* buffer)
{
    struct lconv *locale_data = FUNC2();
    const char *decimal_point = locale_data->decimal_point;

    if (decimal_point[0] != '.' || decimal_point[1] != 0) {
        size_t decimal_point_len = FUNC4(decimal_point);

        if (*buffer == '+' || *buffer == '-') {
            buffer++;
        }
        while (FUNC1(FUNC0(*buffer))) {
            buffer++;
        }
        if (FUNC5(buffer, decimal_point, decimal_point_len) == 0) {
            *buffer = '.';
            buffer++;
            if (decimal_point_len > 1) {
                /* buffer needs to get smaller */
                size_t rest_len = FUNC4(buffer + (decimal_point_len - 1));
                FUNC3(buffer, buffer + (decimal_point_len - 1), rest_len);
                buffer[rest_len] = 0;
            }
        }
    }
}