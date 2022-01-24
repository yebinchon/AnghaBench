#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ tag; int /*<<< orphan*/ * parent; } ;
typedef  TYPE_1__ JsonNode ;

/* Variables and functions */
 scalar_t__ JSON_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void FUNC3(JsonNode *object, const char *key, JsonNode *value)
{
	FUNC1(object->tag == JSON_OBJECT);
	FUNC1(value->parent == NULL);
	
	FUNC0(object, FUNC2(key), value);
}