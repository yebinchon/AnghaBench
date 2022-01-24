#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
#define  JSON_ARRAY 135 
#define  JSON_FALSE 134 
#define  JSON_INTEGER 133 
#define  JSON_NULL 132 
#define  JSON_OBJECT 131 
#define  JSON_REAL 130 
#define  JSON_STRING 129 
#define  JSON_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC10(json_t *element, int indent) {
    switch (FUNC1(element)) {
    case JSON_OBJECT:
        FUNC6(element, indent);
        break;
    case JSON_ARRAY:
        FUNC2(element, indent);
        break;
    case JSON_STRING:
        FUNC8(element, indent);
        break;
    case JSON_INTEGER:
        FUNC4(element, indent);
        break;
    case JSON_REAL:
        FUNC7(element, indent);
        break;
    case JSON_TRUE:
        FUNC9(element, indent);
        break;
    case JSON_FALSE:
        FUNC3(element, indent);
        break;
    case JSON_NULL:
        FUNC5(element, indent);
        break;
    default:
        FUNC0(stderr, "unrecognized JSON type %d\n", FUNC1(element));
    }
}