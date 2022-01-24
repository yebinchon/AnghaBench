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
struct TYPE_3__ {int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  JsonTag ;
typedef  TYPE_1__ JsonNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static JsonNode *FUNC2(JsonTag tag)
{
	JsonNode *ret = (JsonNode*) FUNC0(1, sizeof(JsonNode));
	if (ret == NULL)
		FUNC1();
	ret->tag = tag;
	return ret;
}