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
struct url_info {int index; int /*<<< orphan*/  entry; int /*<<< orphan*/  flags; int /*<<< orphan*/ * url; } ;
struct inf_value {int dummy; } ;
struct inf_section {int dummy; } ;
struct cifcomponent {int /*<<< orphan*/  urls; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 struct url_info* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct inf_section*,struct inf_value**) ; 
 char* FUNC3 (struct inf_value*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct url_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct inf_value*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inf_value*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC10(struct cifcomponent *component, struct inf_section *section)
{
    struct inf_value *inf_value = NULL;
    struct url_info *url_entry;
    char *str, *next;
    int index;

    while (FUNC2(section, &inf_value))
    {
        str = FUNC3(inf_value);
        if (!str) return E_OUTOFMEMORY;

        if (FUNC5(str, "URL", 3))
            goto next;

        if (!str[3])
            goto next;

        index = FUNC6(str+3, &next, 10);
        if (next == str+3 || *next != 0 || index < 1)
            goto next;
        index--;

        url_entry = FUNC0(sizeof(*url_entry));
        if (!url_entry) goto error;

        url_entry->index = index;

        if (!FUNC9(inf_value, 1, &url_entry->url, NULL))
            goto error;
        if (!url_entry->url || !*url_entry->url)
        {
            FUNC7(url_entry);
            goto next;
        }

        if (!FUNC8(inf_value, 2, &url_entry->flags, 0))
            goto error;

        FUNC4(&component->urls, &url_entry->entry);

    next:
        FUNC1(str);
    }

    return TRUE;

error:
    FUNC1(str);
    FUNC7(url_entry);
    return FALSE;
}