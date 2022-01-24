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
struct parser {int /*<<< orphan*/  data_type; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINE_START ; 
 int /*<<< orphan*/  FUNC1 (struct parser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC2(struct parser *parser, WCHAR *pos)
{
    FUNC0("Unknown registry data type [0x%x]\n", parser->data_type);

    FUNC1(parser, LINE_START);
    return pos;
}