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
 int /*<<< orphan*/  COLOR_BLACK ; 
 int /*<<< orphan*/  COLOR_BLUE ; 
 int /*<<< orphan*/  COLOR_CYAN ; 
 int /*<<< orphan*/  COLOR_GREEN ; 
 int /*<<< orphan*/  COLOR_RED ; 
 int /*<<< orphan*/  COLOR_WHITE ; 
 int /*<<< orphan*/  COLOR_YELLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  border ; 
 int /*<<< orphan*/  button_active ; 
 int /*<<< orphan*/  button_inactive ; 
 int /*<<< orphan*/  button_key_active ; 
 int /*<<< orphan*/  button_key_inactive ; 
 int /*<<< orphan*/  button_label_active ; 
 int /*<<< orphan*/  button_label_inactive ; 
 int /*<<< orphan*/  check ; 
 int /*<<< orphan*/  check_selected ; 
 int /*<<< orphan*/  darrow ; 
 int /*<<< orphan*/  dialog ; 
 int /*<<< orphan*/  inputbox ; 
 int /*<<< orphan*/  inputbox_border ; 
 int /*<<< orphan*/  item ; 
 int /*<<< orphan*/  item_selected ; 
 int /*<<< orphan*/  menubox ; 
 int /*<<< orphan*/  menubox_border ; 
 int /*<<< orphan*/  position_indicator ; 
 int /*<<< orphan*/  screen ; 
 int /*<<< orphan*/  searchbox ; 
 int /*<<< orphan*/  searchbox_border ; 
 int /*<<< orphan*/  searchbox_title ; 
 int /*<<< orphan*/  shadow ; 
 int /*<<< orphan*/  tag ; 
 int /*<<< orphan*/  tag_key ; 
 int /*<<< orphan*/  tag_key_selected ; 
 int /*<<< orphan*/  tag_selected ; 
 int /*<<< orphan*/  title ; 
 int /*<<< orphan*/  uarrow ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(screen,                COLOR_CYAN,   COLOR_BLUE,   true);
	FUNC0(shadow,                COLOR_BLACK,  COLOR_BLACK,  true);
	FUNC0(dialog,                COLOR_BLACK,  COLOR_WHITE,  false);
	FUNC0(title,                 COLOR_YELLOW, COLOR_WHITE,  true);
	FUNC0(border,                COLOR_WHITE,  COLOR_WHITE,  true);
	FUNC0(button_active,         COLOR_WHITE,  COLOR_BLUE,   true);
	FUNC0(button_inactive,       COLOR_BLACK,  COLOR_WHITE,  false);
	FUNC0(button_key_active,     COLOR_WHITE,  COLOR_BLUE,   true);
	FUNC0(button_key_inactive,   COLOR_RED,    COLOR_WHITE,  false);
	FUNC0(button_label_active,   COLOR_YELLOW, COLOR_BLUE,   true);
	FUNC0(button_label_inactive, COLOR_BLACK,  COLOR_WHITE,  true);
	FUNC0(inputbox,              COLOR_BLACK,  COLOR_WHITE,  false);
	FUNC0(inputbox_border,       COLOR_BLACK,  COLOR_WHITE,  false);
	FUNC0(searchbox,             COLOR_BLACK,  COLOR_WHITE,  false);
	FUNC0(searchbox_title,       COLOR_YELLOW, COLOR_WHITE,  true);
	FUNC0(searchbox_border,      COLOR_WHITE,  COLOR_WHITE,  true);
	FUNC0(position_indicator,    COLOR_YELLOW, COLOR_WHITE,  true);
	FUNC0(menubox,               COLOR_BLACK,  COLOR_WHITE,  false);
	FUNC0(menubox_border,        COLOR_WHITE,  COLOR_WHITE,  true);
	FUNC0(item,                  COLOR_BLACK,  COLOR_WHITE,  false);
	FUNC0(item_selected,         COLOR_WHITE,  COLOR_BLUE,   true);
	FUNC0(tag,                   COLOR_YELLOW, COLOR_WHITE,  true);
	FUNC0(tag_selected,          COLOR_YELLOW, COLOR_BLUE,   true);
	FUNC0(tag_key,               COLOR_YELLOW, COLOR_WHITE,  true);
	FUNC0(tag_key_selected,      COLOR_YELLOW, COLOR_BLUE,   true);
	FUNC0(check,                 COLOR_BLACK,  COLOR_WHITE,  false);
	FUNC0(check_selected,        COLOR_WHITE,  COLOR_BLUE,   true);
	FUNC0(uarrow,                COLOR_GREEN,  COLOR_WHITE,  true);
	FUNC0(darrow,                COLOR_GREEN,  COLOR_WHITE,  true);
}