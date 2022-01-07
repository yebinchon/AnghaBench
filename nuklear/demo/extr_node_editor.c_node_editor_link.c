
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_link {int input_id; int input_slot; int output_id; int output_slot; } ;
struct node_editor {scalar_t__ link_count; struct node_link* links; } ;
typedef scalar_t__ nk_size ;


 int NK_ASSERT (int) ;
 scalar_t__ NK_LEN (struct node_link*) ;

__attribute__((used)) static void
node_editor_link(struct node_editor *editor, int in_id, int in_slot,
    int out_id, int out_slot)
{
    struct node_link *link;
    NK_ASSERT((nk_size)editor->link_count < NK_LEN(editor->links));
    link = &editor->links[editor->link_count++];
    link->input_id = in_id;
    link->input_slot = in_slot;
    link->output_id = out_id;
    link->output_slot = out_slot;
}
