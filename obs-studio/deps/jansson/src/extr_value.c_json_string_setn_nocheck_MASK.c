#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {char* value; size_t length; } ;
typedef  TYPE_1__ json_string_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,size_t) ; 

int FUNC4(json_t *json, const char *value, size_t len)
{
    char *dup;
    json_string_t *string;

    if(!FUNC0(json) || !value)
        return -1;

    dup = FUNC3(value, len);
    if(!dup)
        return -1;

    string = FUNC1(json);
    FUNC2(string->value);
    string->value = dup;
    string->length = len;

    return 0;
}