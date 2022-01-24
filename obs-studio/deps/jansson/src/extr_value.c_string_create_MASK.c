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
struct TYPE_3__ {char* value; size_t length; int /*<<< orphan*/  json; } ;
typedef  TYPE_1__ json_string_t ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int) ; 
 char* FUNC3 (char const*,size_t) ; 

__attribute__((used)) static json_t *FUNC4(const char *value, size_t len, int own)
{
    char *v;
    json_string_t *string;

    if(!value)
        return NULL;

    if(own)
        v = (char *)value;
    else {
        v = FUNC3(value, len);
        if(!v)
            return NULL;
    }

    string = FUNC2(sizeof(json_string_t));
    if(!string) {
        if(!own)
            FUNC1(v);
        return NULL;
    }
    FUNC0(&string->json, JSON_STRING);
    string->value = v;
    string->length = len;

    return &string->json;
}