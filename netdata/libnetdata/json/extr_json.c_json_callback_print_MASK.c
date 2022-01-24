#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* string; int /*<<< orphan*/  boolean; int /*<<< orphan*/  number; int /*<<< orphan*/  items; } ;
struct TYPE_5__ {int type; int (* callback_function ) (TYPE_2__*) ;TYPE_1__ data; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ JSON_ENTRY ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
#define  JSON_ARRAY 133 
#define  JSON_BOOLEAN 132 
#define  JSON_NULL 131 
#define  JSON_NUMBER 130 
#define  JSON_OBJECT 129 
#define  JSON_STRING 128 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC7(JSON_ENTRY *e)
{
    BUFFER *wb=FUNC0(300);

    FUNC2(wb,"%s = ", e->name);
    char txt[50];
    switch(e->type) {
        case JSON_OBJECT:
            e->callback_function = json_callback_print;
            FUNC3(wb,"OBJECT");
            break;

        case JSON_ARRAY:
            e->callback_function = json_callback_print;
            FUNC6(txt,"ARRAY[%lu]", e->data.items);
            FUNC3(wb, txt);
            break;

        case JSON_STRING:
            FUNC3(wb, e->data.string);
            break;

        case JSON_NUMBER:
            FUNC6(txt,"%Lf", e->data.number);
            FUNC3(wb,txt);

            break;

        case JSON_BOOLEAN:
            FUNC3(wb, e->data.boolean?"TRUE":"FALSE");
            break;

        case JSON_NULL:
            FUNC3(wb,"NULL");
            break;
    }
    FUNC5("JSON: %s", FUNC4(wb));
    FUNC1(wb);
    return 0;
}