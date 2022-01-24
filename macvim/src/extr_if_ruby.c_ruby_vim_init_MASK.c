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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIM_VERSION_BUILD ; 
 int /*<<< orphan*/  VIM_VERSION_LONG ; 
 int /*<<< orphan*/  VIM_VERSION_LONG_DATE ; 
 int /*<<< orphan*/  VIM_VERSION_MAJOR ; 
 int /*<<< orphan*/  VIM_VERSION_MEDIUM ; 
 int /*<<< orphan*/  VIM_VERSION_MINOR ; 
 int /*<<< orphan*/  VIM_VERSION_PATCHLEVEL ; 
 int /*<<< orphan*/  VIM_VERSION_SHORT ; 
 int /*<<< orphan*/  buffer_append ; 
 int /*<<< orphan*/  buffer_aref ; 
 int /*<<< orphan*/  buffer_aset ; 
 int /*<<< orphan*/  buffer_count ; 
 int /*<<< orphan*/  buffer_delete ; 
 int /*<<< orphan*/  buffer_name ; 
 int /*<<< orphan*/  buffer_number ; 
 int /*<<< orphan*/  buffer_s_aref ; 
 int /*<<< orphan*/  buffer_s_count ; 
 int /*<<< orphan*/  buffer_s_current ; 
 void* cBuffer ; 
 void* cVimWindow ; 
 int /*<<< orphan*/  current_line_number ; 
 void* eDeletedBufferError ; 
 void* eDeletedWindowError ; 
 int /*<<< orphan*/  line_s_current ; 
 int /*<<< orphan*/  mVIM ; 
 int /*<<< orphan*/  objtbl ; 
 int /*<<< orphan*/  rb_cObject ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rb_eStandardError ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_current_line ; 
 int /*<<< orphan*/  vim_command ; 
 int /*<<< orphan*/  vim_evaluate ; 
 int /*<<< orphan*/  vim_message ; 
 int /*<<< orphan*/  vim_set_option ; 
 int /*<<< orphan*/  window_buffer ; 
 int /*<<< orphan*/  window_cursor ; 
 int /*<<< orphan*/  window_height ; 
 int /*<<< orphan*/  window_s_aref ; 
 int /*<<< orphan*/  window_s_count ; 
 int /*<<< orphan*/  window_s_current ; 
 int /*<<< orphan*/  window_set_cursor ; 
 int /*<<< orphan*/  window_set_height ; 
 int /*<<< orphan*/  window_set_width ; 
 int /*<<< orphan*/  window_width ; 

__attribute__((used)) static void FUNC11(void)
{
    objtbl = FUNC9();
    FUNC8(&objtbl);

    /* The Vim module used to be called "VIM", but "Vim" is better.  Make an
     * alias "VIM" for backwards compatibility. */
    mVIM = FUNC4("Vim");
    FUNC2(rb_cObject, "VIM", mVIM);
    FUNC2(mVIM, "VERSION_MAJOR", FUNC0(VIM_VERSION_MAJOR));
    FUNC2(mVIM, "VERSION_MINOR", FUNC0(VIM_VERSION_MINOR));
    FUNC2(mVIM, "VERSION_BUILD", FUNC0(VIM_VERSION_BUILD));
    FUNC2(mVIM, "VERSION_PATCHLEVEL", FUNC0(VIM_VERSION_PATCHLEVEL));
    FUNC2(mVIM, "VERSION_SHORT", FUNC10(VIM_VERSION_SHORT));
    FUNC2(mVIM, "VERSION_MEDIUM", FUNC10(VIM_VERSION_MEDIUM));
    FUNC2(mVIM, "VERSION_LONG", FUNC10(VIM_VERSION_LONG));
    FUNC2(mVIM, "VERSION_LONG_DATE", FUNC10(VIM_VERSION_LONG_DATE));
    FUNC5(mVIM, "message", vim_message, 1);
    FUNC5(mVIM, "set_option", vim_set_option, 1);
    FUNC5(mVIM, "command", vim_command, 1);
    FUNC5(mVIM, "evaluate", vim_evaluate, 1);

    eDeletedBufferError = FUNC1(mVIM, "DeletedBufferError",
						rb_eStandardError);
    eDeletedWindowError = FUNC1(mVIM, "DeletedWindowError",
						rb_eStandardError);

    cBuffer = FUNC1(mVIM, "Buffer", rb_cObject);
    FUNC6(cBuffer, "current", buffer_s_current, 0);
    FUNC6(cBuffer, "count", buffer_s_count, 0);
    FUNC6(cBuffer, "[]", buffer_s_aref, 1);
    FUNC3(cBuffer, "name", buffer_name, 0);
    FUNC3(cBuffer, "number", buffer_number, 0);
    FUNC3(cBuffer, "count", buffer_count, 0);
    FUNC3(cBuffer, "length", buffer_count, 0);
    FUNC3(cBuffer, "[]", buffer_aref, 1);
    FUNC3(cBuffer, "[]=", buffer_aset, 2);
    FUNC3(cBuffer, "delete", buffer_delete, 1);
    FUNC3(cBuffer, "append", buffer_append, 2);

    /* Added line manipulation functions
     *   SegPhault - 03/07/05 */
    FUNC3(cBuffer, "line_number", current_line_number, 0);
    FUNC3(cBuffer, "line", line_s_current, 0);
    FUNC3(cBuffer, "line=", set_current_line, 1);


    cVimWindow = FUNC1(mVIM, "Window", rb_cObject);
    FUNC6(cVimWindow, "current", window_s_current, 0);
    FUNC6(cVimWindow, "count", window_s_count, 0);
    FUNC6(cVimWindow, "[]", window_s_aref, 1);
    FUNC3(cVimWindow, "buffer", window_buffer, 0);
    FUNC3(cVimWindow, "height", window_height, 0);
    FUNC3(cVimWindow, "height=", window_set_height, 1);
    FUNC3(cVimWindow, "width", window_width, 0);
    FUNC3(cVimWindow, "width=", window_set_width, 1);
    FUNC3(cVimWindow, "cursor", window_cursor, 0);
    FUNC3(cVimWindow, "cursor=", window_set_cursor, 1);

    FUNC7("$curbuf", buffer_s_current, 0);
    FUNC7("$curwin", window_s_current, 0);
}