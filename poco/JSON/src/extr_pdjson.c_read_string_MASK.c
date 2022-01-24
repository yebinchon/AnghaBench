#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int (* get ) (TYPE_2__*) ;} ;
struct TYPE_9__ {TYPE_2__ source; } ;
typedef  TYPE_1__ json_stream ;
typedef  enum json_type { ____Placeholder_json_type } json_type ;

/* Variables and functions */
 int EOF ; 
 int JSON_ERROR ; 
 int JSON_STRING ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static enum json_type
FUNC7(json_stream *json)
{
    if (FUNC1(json) != 0)
        return JSON_ERROR;
    while (1) {
        int c = json->source.get(&json->source);
        if (c == EOF) {
            FUNC2(json, "%s", "unterminated string literal");
            return JSON_ERROR;
        } else if (c == '"') {
            if (FUNC3(json, '\0') == 0)
                return JSON_STRING;
            else
                return JSON_ERROR;
        } else if (c == '\\') {
            if (FUNC4(json) != 0)
                return JSON_ERROR;
        } else if ((unsigned) c >= 0x80) {
            if (FUNC5(json, c) != 0)
                return JSON_ERROR;
        } else {
            if (FUNC0(c)) {
                FUNC2(json, "%s", "unescaped control character in string");
                return JSON_ERROR;
            }

            if (FUNC3(json, c) != 0)
                return JSON_ERROR;
        }
    }
    return JSON_ERROR;
}