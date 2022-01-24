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
struct TYPE_3__ {int /*<<< orphan*/  hashtable; } ;
typedef  TYPE_1__ json_object_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(json_t *json, const char *key, json_t *value)
{
    json_object_t *object;

    if(!value)
        return -1;

    if(!key || !FUNC2(json) || json == value)
    {
        FUNC1(value);
        return -1;
    }
    object = FUNC3(json);

    if(FUNC0(&object->hashtable, key, value))
    {
        FUNC1(value);
        return -1;
    }

    return 0;
}