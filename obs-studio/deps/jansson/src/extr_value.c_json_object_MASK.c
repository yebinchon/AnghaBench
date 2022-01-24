#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_4__ {int /*<<< orphan*/  json; scalar_t__ visited; int /*<<< orphan*/  hashtable; } ;
typedef  TYPE_1__ json_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_OBJECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hashtable_seed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 

json_t *FUNC5(void)
{
    json_object_t *object = FUNC4(sizeof(json_object_t));
    if(!object)
        return NULL;

    if (!hashtable_seed) {
        /* Autoseed */
        FUNC2(0);
    }

    FUNC1(&object->json, JSON_OBJECT);

    if(FUNC0(&object->hashtable))
    {
        FUNC3(object);
        return NULL;
    }

    object->visited = 0;

    return &object->json;
}