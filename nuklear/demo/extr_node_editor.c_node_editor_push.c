
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_editor {struct node* end; struct node* begin; } ;
struct node {struct node* next; struct node* prev; } ;



__attribute__((used)) static void
node_editor_push(struct node_editor *editor, struct node *node)
{
    if (!editor->begin) {
        node->next = ((void*)0);
        node->prev = ((void*)0);
        editor->begin = node;
        editor->end = node;
    } else {
        node->prev = editor->end;
        if (editor->end)
            editor->end->next = node;
        node->next = ((void*)0);
        editor->end = node;
    }
}
