
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_editor {scalar_t__ node_count; struct node* node_buf; } ;
struct nk_rect {int dummy; } ;
struct nk_color {int dummy; } ;
struct node {int input_count; int output_count; int name; struct nk_rect bounds; struct nk_color color; scalar_t__ value; int ID; } ;
typedef scalar_t__ nk_size ;


 int NK_ASSERT (int) ;
 scalar_t__ NK_LEN (struct node*) ;
 struct nk_color nk_rgb (int,int ,int ) ;
 int node_editor_push (struct node_editor*,struct node*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void
node_editor_add(struct node_editor *editor, const char *name, struct nk_rect bounds,
    struct nk_color col, int in_count, int out_count)
{
    static int IDs = 0;
    struct node *node;
    NK_ASSERT((nk_size)editor->node_count < NK_LEN(editor->node_buf));
    node = &editor->node_buf[editor->node_count++];
    node->ID = IDs++;
    node->value = 0;
    node->color = nk_rgb(255, 0, 0);
    node->input_count = in_count;
    node->output_count = out_count;
    node->color = col;
    node->bounds = bounds;
    strcpy(node->name, name);
    node_editor_push(editor, node);
}
