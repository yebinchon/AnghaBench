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
struct inf_section {int dummy; } ;
struct inf_file {char* content; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 char* FUNC1 (char**,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct inf_file*,char*,char*,struct inf_section**) ; 
 int /*<<< orphan*/  FUNC3 (struct inf_section*,char*) ; 
 scalar_t__ FUNC4 (char*,char) ; 

__attribute__((used)) static HRESULT FUNC5(struct inf_file *inf)
{
    struct inf_section *section = NULL;
    char *content = inf->content;
    char *line, *last_chr;
    HRESULT hr = S_OK;

    while (FUNC0(hr) && (line = FUNC1(&content, &last_chr)))
    {
        if (*line == '[')
            hr = FUNC2(inf, line, last_chr, &section);
        else if (FUNC4(line, '=') && section)
            hr = FUNC3(section, line);
    }

    return hr;
}