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
struct parser {scalar_t__ reg_version; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  data_type; int /*<<< orphan*/  value_name; int /*<<< orphan*/  hkey; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  PARSE_WIN31_LINE ; 
 scalar_t__ REG_VERSION_31 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct parser*) ; 
 int /*<<< orphan*/  FUNC2 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC3(struct parser *parser, WCHAR *pos)
{
    FUNC0(parser->hkey, parser->value_name, 0, parser->data_type,
                   parser->data, parser->data_size);

    FUNC1(parser);

    if (parser->reg_version == REG_VERSION_31)
        FUNC2(parser, PARSE_WIN31_LINE);
    else
        FUNC2(parser, LINE_START);

    return pos;
}