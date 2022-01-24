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
struct node_editor {int /*<<< orphan*/  show_grid; int /*<<< orphan*/ * end; int /*<<< orphan*/ * begin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct node_editor*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  nk_true ; 
 int /*<<< orphan*/  FUNC3 (struct node_editor*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct node_editor*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(struct node_editor *editor)
{
    FUNC0(editor, 0, sizeof(*editor));
    editor->begin = NULL;
    editor->end = NULL;
    FUNC3(editor, "Source", FUNC1(40, 10, 180, 220), FUNC2(255, 0, 0), 0, 1);
    FUNC3(editor, "Source", FUNC1(40, 260, 180, 220), FUNC2(0, 255, 0), 0, 1);
    FUNC3(editor, "Combine", FUNC1(400, 100, 180, 220), FUNC2(0,0,255), 2, 2);
    FUNC4(editor, 0, 0, 2, 0);
    FUNC4(editor, 1, 0, 2, 1);
    editor->show_grid = nk_true;
}