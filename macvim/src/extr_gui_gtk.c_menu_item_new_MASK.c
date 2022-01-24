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
struct TYPE_3__ {scalar_t__* actext; int /*<<< orphan*/  id; int /*<<< orphan*/  label; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ vimmenu_T ;
typedef  int /*<<< orphan*/  char_u ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* p_wak ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(vimmenu_T *menu, GtkWidget *parent_widget)
{
    GtkWidget	*box;
    char_u	*text;
    int		use_mnemonic;

    /* It would be neat to have image menu items, but that would require major
     * changes to Vim's menu system.  Not to mention that all the translations
     * had to be updated. */
    menu->id = FUNC11();
    box = FUNC8(FALSE, 20);

    use_mnemonic = (p_wak[0] != 'n' || !FUNC4(parent_widget));
    text = FUNC13(menu->name, use_mnemonic);

    menu->label = FUNC10((const char *)text);
    FUNC14(text);

    FUNC6(FUNC2(box), menu->label, FALSE, FALSE, 0);

    if (menu->actext != NULL && menu->actext[0] != NUL)
    {
	text = FUNC0(menu->actext);

	FUNC5(FUNC2(box),
			 FUNC9((const char *)text),
			 FALSE, FALSE, 0);

	FUNC1(text);
    }

    FUNC7(FUNC3(menu->id), box);
    FUNC12(menu->id);
}