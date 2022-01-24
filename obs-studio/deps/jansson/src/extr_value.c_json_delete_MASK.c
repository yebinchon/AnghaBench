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
#define  JSON_ARRAY 132 
#define  JSON_INTEGER 131 
#define  JSON_OBJECT 130 
#define  JSON_REAL 129 
#define  JSON_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(json_t *json)
{
    if (!json)
        return;

    switch(FUNC10(json)) {
        case JSON_OBJECT:
            FUNC2(FUNC7(json));
            break;
        case JSON_ARRAY:
            FUNC0(FUNC5(json));
            break;
        case JSON_STRING:
            FUNC4(FUNC9(json));
            break;
        case JSON_INTEGER:
            FUNC1(FUNC6(json));
            break;
        case JSON_REAL:
            FUNC3(FUNC8(json));
            break;
        default:
            return;
    }

    /* json_delete is not called for true, false or null */
}