#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int itemFlags; int nItems; TYPE_1__* items; int /*<<< orphan*/  keyword; } ;
struct TYPE_5__ {int /*<<< orphan*/  local; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  TYPE_2__ IndexItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC6(IndexItem *item, const char *text, UINT code_page)
{
    const char *ptr;
    LPWSTR *param;
    int len;

    ptr = FUNC4(text, "name", &len);
    if(!ptr) {
        FUNC0("name attr not found\n");
        return;
    }

    /* Allocate a new sub-item, either on the first run or whenever a
     * sub-topic has filled out both the "name" and "local" params.
     */
    if(item->itemFlags == 0x11 && (!FUNC1("name", ptr, len) || !FUNC1("local", ptr, len)))
        FUNC5(item, item->nItems+1);
    if(!FUNC1("keyword", ptr, len)) {
        param = &item->keyword;
    }else if(!item->keyword && !FUNC1("name", ptr, len)) {
        /* Some HTML Help index files use an additional "name" parameter
         * rather than the "keyword" parameter.  In this case, the first
         * occurrence of the "name" parameter is the keyword.
         */
        param = &item->keyword;
    }else if(!FUNC1("name", ptr, len)) {
        item->itemFlags |= 0x01;
        param = &item->items[item->nItems-1].name;
    }else if(!FUNC1("local", ptr, len)) {
        item->itemFlags |= 0x10;
        param = &item->items[item->nItems-1].local;
    }else {
        FUNC0("unhandled param %s\n", FUNC2(ptr, len));
        return;
    }

    ptr = FUNC4(text, "value", &len);
    if(!ptr) {
        FUNC0("value attr not found\n");
        return;
    }

    *param = FUNC3(ptr, len, code_page);
}