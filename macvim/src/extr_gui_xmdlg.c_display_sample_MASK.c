#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XmString ;
typedef  int /*<<< orphan*/  XmFontList ;
typedef  int /*<<< orphan*/  XFontStruct ;
struct TYPE_3__ {int /*<<< orphan*/  old_list; int /*<<< orphan*/ * old; int /*<<< orphan*/  sample; int /*<<< orphan*/  font_name; int /*<<< orphan*/  dialog; } ;
typedef  TYPE_1__ SharedFontSelData ;
typedef  int /*<<< orphan*/  Display ;
typedef  int /*<<< orphan*/  Arg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XmNfontList ; 
 int /*<<< orphan*/  XmNlabelString ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(SharedFontSelData *data)
{
    Arg		    args[2];
    int		    n;
    XFontStruct	*   font;
    XmFontList	    font_list;
    Display *	    display;
    XmString	    str;

    display = FUNC5(data->dialog);
    font = FUNC1(display, data->font_name);
    font_list = FUNC8(font);

    n = 0;
    str = FUNC3("AaBbZzYy 0123456789");
    FUNC6(args[n], XmNlabelString, str); n++;
    FUNC6(args[n], XmNfontList, font_list); n++;

    FUNC7(data->sample, args, n);
    FUNC4(str);

    if (data->old)
    {
	FUNC0(display, data->old);
	FUNC2(data->old_list);
    }
    data->old = font;
    data->old_list = font_list;
}