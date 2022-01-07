
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list {int dummy; } ;
struct frame_node {int entry; TYPE_1__* frame; } ;
struct TYPE_3__ {int pFrameFirstChild; } ;
typedef TYPE_1__ D3DXFRAME ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 struct frame_node* HeapAlloc (int ,int ,int) ;
 int TRUE ;
 int list_add_tail (struct list*,int *) ;

__attribute__((used)) static BOOL queue_frame_node(struct list *queue, D3DXFRAME *frame)
{
    struct frame_node *node;

    if (!frame->pFrameFirstChild)
        return TRUE;

    node = HeapAlloc(GetProcessHeap(), 0, sizeof(*node));
    if (!node)
        return FALSE;

    node->frame = frame;
    list_add_tail(queue, &node->entry);

    return TRUE;
}
