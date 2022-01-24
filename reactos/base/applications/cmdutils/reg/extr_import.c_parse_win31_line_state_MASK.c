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
struct parser {char* data; int data_size; int /*<<< orphan*/  data_type; int /*<<< orphan*/ * value_name; int /*<<< orphan*/  file; } ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  SET_VALUE ; 
 int /*<<< orphan*/  STRING_OPEN_KEY_FAILED ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct parser*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct parser*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC8(struct parser *parser, WCHAR *pos)
{
    WCHAR *line, *value;
    static WCHAR hkcr[] = {'H','K','E','Y','_','C','L','A','S','S','E','S','_','R','O','O','T'};
    unsigned int key_end = 0;

    if (!(line = FUNC1(parser->file)))
        return NULL;

    if (FUNC7(line, hkcr, FUNC0(hkcr)))
        return line;

    /* get key name */
    while (line[key_end] && !FUNC2(line[key_end])) key_end++;

    value = line + key_end;
    while (*value == ' ' || *value == '\t') value++;

    if (*value == '=') value++;
    if (*value == ' ') value++; /* at most one space is skipped */

    line[key_end] = 0;

    if (FUNC4(parser, line) != ERROR_SUCCESS)
    {
        FUNC5(STRING_OPEN_KEY_FAILED, line);
        return line;
    }

    parser->value_name = NULL;
    parser->data_type = REG_SZ;
    parser->data = value;
    parser->data_size = (FUNC3(value) + 1) * sizeof(WCHAR);

    FUNC6(parser, SET_VALUE);
    return value;
}