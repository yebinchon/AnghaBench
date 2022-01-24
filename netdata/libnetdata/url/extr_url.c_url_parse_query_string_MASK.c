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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

int FUNC3(char *output, size_t max, char **map, int total) {
    if(!total) {
        return 0;
    }

    int counter, next;
    size_t length;
    char *end;
    char *begin = map[0];
    char save;
    size_t copied = 0;
    for(counter = 0, next=1 ; next <= total ; ++counter, ++next) {
        if (next != total) {
            end = map[next];
            length = (size_t) (end - begin);
            save = *end;
            *end = 0x00;
        } else {
            length = FUNC1(begin);
            end = NULL;
        }
        length++;

        if (length > (max - copied)) {
            FUNC0("Parsing query string: we cannot parse a query string so big");
            break;
        }

        if(!FUNC2(output, begin, length)) {
            return -1;
        }
        length = FUNC1(output);
        copied += length;
        output += length;

        begin = end;
        if (begin) {
            *begin = save;
        }
    }

    return 0;
}