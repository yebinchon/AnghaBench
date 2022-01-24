#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lexret {char const* string; void* integer; } ;
struct TYPE_7__ {scalar_t__ hMainWnd; TYPE_1__* info; struct TYPE_7__* next; } ;
typedef  TYPE_3__ WINHELP_WINDOW ;
struct TYPE_8__ {TYPE_2__* active_win; TYPE_3__* win_list; } ;
struct TYPE_6__ {scalar_t__ hMainWnd; } ;
struct TYPE_5__ {char const* name; } ;
typedef  void* LONG_PTR ;

/* Variables and functions */
 int EMPTY ; 
 TYPE_4__ Globals ; 
 int IDENTIFIER ; 
 int INTEGER ; 
 scalar_t__ MACRO_Builtins ; 
 int FUNC0 (scalar_t__,char const*,struct lexret*,int) ; 
 scalar_t__ MACRO_Loaded ; 
 int MACRO_NumLoaded ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

int FUNC4(const char* name, struct lexret* lr)
{
    int ret;

    if ((ret = FUNC0(MACRO_Builtins, name, lr, -1)) != EMPTY)
        return ret;
    if (MACRO_Loaded && (ret = FUNC0(MACRO_Loaded, name, lr, MACRO_NumLoaded)) != EMPTY)
        return ret;
    if (!FUNC3(name, "hwndApp"))
    {
        WINHELP_WINDOW* win;
        lr->integer = 0;
        for (win = Globals.win_list; win; win = win->next)
        {
            if (!FUNC3(win->info->name, "main"))
            {
                lr->integer = (LONG_PTR)win->hMainWnd;
                break;
            }
        }
        return INTEGER;
    }
    if (!FUNC3(name, "hwndContext"))
    {
        lr->integer = Globals.active_win ?
            (LONG_PTR)Globals.active_win->hMainWnd : 0;
        return INTEGER;
    }
    if (!FUNC3(name, "qchPath") || !FUNC3(name, "qError") || !FUNC3(name, "lTopicNo") ||
        !FUNC3(name, "hfs") || !FUNC3(name, "coForeground") || !FUNC3(name, "coBackground"))
    {
        FUNC1("keyword %s not substituted in macro parsing\n", FUNC2(name));
        return EMPTY;
    }

    lr->string = name;
    return IDENTIFIER;
}