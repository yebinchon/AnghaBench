
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct demux_queue {int is_bof; size_t index0; int * tail; struct demux_packet* head; scalar_t__ num_index; TYPE_3__* index; TYPE_2__* ds; scalar_t__ tail_cum_pos; struct demux_packet* keyframe_latest; struct demux_packet* keyframe_first; } ;
struct demux_packet {struct demux_packet* next; scalar_t__ cum_pos; } ;
struct TYPE_6__ {struct demux_packet* pkt; } ;
struct TYPE_5__ {TYPE_1__* in; struct demux_packet* reader_head; } ;
struct TYPE_4__ {int total_bytes; } ;


 int QUEUE_INDEX_SIZE_MASK (struct demux_queue*) ;
 int assert (int) ;
 int talloc_free (struct demux_packet*) ;

__attribute__((used)) static void remove_head_packet(struct demux_queue *queue)
{
    struct demux_packet *dp = queue->head;

    assert(queue->ds->reader_head != dp);
    if (queue->keyframe_first == dp)
        queue->keyframe_first = ((void*)0);
    if (queue->keyframe_latest == dp)
        queue->keyframe_latest = ((void*)0);
    queue->is_bof = 0;

    uint64_t end_pos = dp->next ? dp->next->cum_pos : queue->tail_cum_pos;
    queue->ds->in->total_bytes -= end_pos - dp->cum_pos;

    if (queue->num_index && queue->index[queue->index0].pkt == dp) {
        queue->index0 = (queue->index0 + 1) & QUEUE_INDEX_SIZE_MASK(queue);
        queue->num_index -= 1;
    }

    queue->head = dp->next;
    if (!queue->head)
        queue->tail = ((void*)0);

    talloc_free(dp);
}
