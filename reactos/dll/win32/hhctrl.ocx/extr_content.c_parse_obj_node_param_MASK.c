#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int /*<<< orphan*/  chm_file; } ;
struct TYPE_5__ {TYPE_4__ merge; void* local; void* name; } ;
typedef  void* LPWSTR ;
typedef  TYPE_1__ ContentItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 void* FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 char* FUNC7 (char const*,char*) ; 

__attribute__((used)) static void FUNC8(ContentItem *item, ContentItem *hhc_root, const char *text, UINT code_page)
{
    const char *ptr;
    LPWSTR *param, merge;
    int len;

    ptr = FUNC5(text, "name", &len);
    if(!ptr) {
        FUNC1("name attr not found\n");
        return;
    }

    if(!FUNC2("name", ptr, len)) {
        param = &item->name;
    }else if(!FUNC2("merge", ptr, len)) {
        param = &merge;
    }else if(!FUNC2("local", ptr, len)) {
        param = &item->local;
    }else {
        FUNC1("unhandled param %s\n", FUNC3(ptr, len));
        return;
    }

    ptr = FUNC5(text, "value", &len);
    if(!ptr) {
        FUNC1("value attr not found\n");
        return;
    }

    /*
     * "merge" parameter data (referencing another CHM file) can be incorporated into the "local" parameter
     * by specifying the filename in the format:
     *  MS-ITS:file.chm::/local_path.htm
     */
    if(param == &item->local && FUNC7(ptr, "::"))
    {
        const char *local = FUNC7(ptr, "::")+2;
        int local_len = len-(local-ptr);

        item->local = FUNC4(local, local_len, code_page);
        param = &merge;
    }

    *param = FUNC4(ptr, len, code_page);

    if(param == &merge) {
        FUNC0(&item->merge, hhc_root->merge.chm_file, merge);
        FUNC6(merge);
    }
}