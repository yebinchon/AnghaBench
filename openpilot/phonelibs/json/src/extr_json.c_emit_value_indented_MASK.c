#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int tag; int /*<<< orphan*/  number_; int /*<<< orphan*/  string_; int /*<<< orphan*/  bool_; } ;
typedef  int /*<<< orphan*/  SB ;
typedef  TYPE_1__ JsonNode ;

/* Variables and functions */
#define  JSON_ARRAY 133 
#define  JSON_BOOL 132 
#define  JSON_NULL 131 
#define  JSON_NUMBER 130 
#define  JSON_OBJECT 129 
#define  JSON_STRING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__ const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int) ; 

void FUNC7(SB *out, const JsonNode *node, const char *space, int indent_level)
{
	FUNC0(FUNC6(node->tag));
	switch (node->tag) {
		case JSON_NULL:
			FUNC5(out, "null");
			break;
		case JSON_BOOL:
			FUNC5(out, node->bool_ ? "true" : "false");
			break;
		case JSON_STRING:
			FUNC4(out, node->string_);
			break;
		case JSON_NUMBER:
			FUNC2(out, node->number_);
			break;
		case JSON_ARRAY:
			FUNC1(out, node, space, indent_level);
			break;
		case JSON_OBJECT:
			FUNC3(out, node, space, indent_level);
			break;
		default:
			FUNC0(false);
	}
}