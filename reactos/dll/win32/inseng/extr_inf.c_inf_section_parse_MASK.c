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
struct inf_section {char* name; int /*<<< orphan*/  entry; int /*<<< orphan*/  values; struct inf_file* file; } ;
struct inf_file {int /*<<< orphan*/  sections; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 struct inf_section* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(struct inf_file *inf, char *line, char *last_chr, struct inf_section **section)
{
    struct inf_section *sec;
    char *comment;
    char *name;

    if (*line != '[')
        return S_OK;

    line++;

    comment = FUNC3(line, ';');
    if (comment)
    {
        *comment = 0;
        line = FUNC4(line, &last_chr, FALSE);
    }

    if (*last_chr != ']')
        return S_OK;

    *last_chr = 0;
    name = FUNC4(line, NULL, FALSE);
    if (!name) return S_OK;

    sec = FUNC0(sizeof(*sec));
    if (!sec) return E_OUTOFMEMORY;

    sec->name = name;
    sec->file = inf;
    FUNC2(&sec->values);

    FUNC1(&inf->sections, &sec->entry);

    *section = sec;
    return S_OK;
}