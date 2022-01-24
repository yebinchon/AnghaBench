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
typedef  scalar_t__ char_u ;
struct TYPE_6__ {int /*<<< orphan*/ * mainwin; } ;
struct TYPE_5__ {scalar_t__ vc_type; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 scalar_t__ CONV_NONE ; 
 char const* DEFAULT_FONT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int GTK_RESPONSE_NONE ; 
 int GTK_RESPONSE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char*) ; 
 int FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ gui ; 
 TYPE_1__ input_conv ; 
 TYPE_1__ output_conv ; 
 scalar_t__* FUNC13 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__* FUNC16 (scalar_t__*,int) ; 
 scalar_t__* FUNC17 (scalar_t__*,scalar_t__*) ; 

char_u *
FUNC18(char_u *oldval)
{
    GtkWidget	*dialog;
    int		response;
    char_u	*fontname = NULL;
    char_u	*oldname;

    dialog = FUNC8(NULL);

    FUNC12(FUNC2(dialog), FUNC2(gui.mainwin));
    FUNC11(FUNC2(dialog), TRUE);

    if (oldval != NULL && oldval[0] != NUL)
    {
	if (output_conv.vc_type != CONV_NONE)
	    oldname = FUNC13(&output_conv, oldval, NULL);
	else
	    oldname = oldval;

	/* Annoying bug in GTK (or Pango): if the font name does not include a
	 * size, zero is used.  Use default point size ten. */
	if (!FUNC15(oldname[FUNC4(oldname) - 1]))
	{
	    char_u	*p = FUNC16(oldname, FUNC4(oldname) + 3);

	    if (p != NULL)
	    {
		FUNC3(p + FUNC4(p), " 10");
		if (oldname != oldval)
		    FUNC14(oldname);
		oldname = p;
	    }
	}

	FUNC9(
		FUNC1(dialog), (const char *)oldname);

	if (oldname != oldval)
	    FUNC14(oldname);
    }
    else
	FUNC9(
		FUNC1(dialog), DEFAULT_FONT);

    response = FUNC6(FUNC0(dialog));

    if (response == GTK_RESPONSE_OK)
    {
	char *name;

	name = FUNC7(
			    FUNC1(dialog));
	if (name != NULL)
	{
	    char_u  *p;

	    /* Apparently some font names include a comma, need to escape
	     * that, because in 'guifont' it separates names. */
	    p = FUNC17((char_u *)name, (char_u *)",");
	    FUNC5(name);
	    if (p != NULL && input_conv.vc_type != CONV_NONE)
	    {
		fontname = FUNC13(&input_conv, p, NULL);
		FUNC14(p);
	    }
	    else
		fontname = p;
	}
    }

    if (response != GTK_RESPONSE_NONE)
	FUNC10(dialog);

    return fontname;
}