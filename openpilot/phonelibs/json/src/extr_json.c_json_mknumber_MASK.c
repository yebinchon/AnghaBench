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
struct TYPE_4__ {double number_; } ;
typedef  TYPE_1__ JsonNode ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_NUMBER ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

JsonNode *FUNC1(double n)
{
	JsonNode *node = FUNC0(JSON_NUMBER);
	node->number_ = n;
	return node;
}