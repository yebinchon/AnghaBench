
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_editor {int show_grid; int * end; int * begin; } ;


 int memset (struct node_editor*,int ,int) ;
 int nk_rect (int,int,int,int) ;
 int nk_rgb (int,int,int) ;
 int nk_true ;
 int node_editor_add (struct node_editor*,char*,int ,int ,int,int) ;
 int node_editor_link (struct node_editor*,int,int ,int,int) ;

__attribute__((used)) static void
node_editor_init(struct node_editor *editor)
{
    memset(editor, 0, sizeof(*editor));
    editor->begin = ((void*)0);
    editor->end = ((void*)0);
    node_editor_add(editor, "Source", nk_rect(40, 10, 180, 220), nk_rgb(255, 0, 0), 0, 1);
    node_editor_add(editor, "Source", nk_rect(40, 260, 180, 220), nk_rgb(0, 255, 0), 0, 1);
    node_editor_add(editor, "Combine", nk_rect(400, 100, 180, 220), nk_rgb(0,0,255), 2, 2);
    node_editor_link(editor, 0, 0, 2, 0);
    node_editor_link(editor, 1, 0, 2, 1);
    editor->show_grid = nk_true;
}
