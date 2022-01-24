#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int (* get ) (TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_2__ source; } ;
typedef  TYPE_1__ json_stream ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 int FUNC4 (TYPE_2__*) ; 

int FUNC5(json_stream *json)
{
    int c = json->source.get(&json->source);
    if (c == EOF) {
        FUNC0(json, "%s", "unterminated string literal in escape");
        return -1;
    } else if (c == 'u') {
        if (FUNC2(json) != 0)
            return -1;
    } else {
        switch (c) {
        case '\\':
        case 'b':
        case 'f':
        case 'n':
        case 'r':
        case 't':
        case '/':
        case '"':
            {
                const char *codes = "\\bfnrt/\"";
                char *p = (char*) FUNC3(codes, c);
                if (FUNC1(json, "\\\b\f\n\r\t/\""[p - codes]) != 0)
                    return -1;
            }
            break;
        default:
            FUNC0(json, "bad escaped byte, '%c'", c);
            return -1;
        }
    }
    return 0;
}