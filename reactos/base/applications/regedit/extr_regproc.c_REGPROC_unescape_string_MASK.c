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
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(WCHAR* str)
{
    int str_idx = 0;            /* current character under analysis */
    int val_idx = 0;            /* the last character of the unescaped string */
    int len = FUNC1(str);
    for (str_idx = 0; str_idx < len; str_idx++, val_idx++) {
        if (str[str_idx] == '\\') {
            str_idx++;
            switch (str[str_idx]) {
            case 'n':
                str[val_idx] = '\n';
                break;
            case '\\':
            case '"':
                str[val_idx] = str[str_idx];
                break;
            default:
                FUNC0(stderr,"Warning! Unrecognized escape sequence: \\%hhd'\n",
                        str[str_idx]);
                str[val_idx] = str[str_idx];
                break;
            }
        } else {
            str[val_idx] = str[str_idx];
        }
    }
    str[val_idx] = '\0';
}