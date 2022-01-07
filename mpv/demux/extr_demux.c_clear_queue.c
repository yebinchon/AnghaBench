
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demux_stream {struct demux_packet* reader_head; struct demux_internal* in; } ;
struct demux_queue {int correct_dts; int correct_pos; int last_pos; int is_eof; int is_bof; void* last_dts; void* last_ts; void* last_pruned; void* seek_end; void* seek_start; int * keyframe_latest; int * keyframe_first; int * tail; struct demux_packet* head; scalar_t__ tail_cum_pos; struct demux_stream* ds; } ;
struct demux_packet {struct demux_packet* next; scalar_t__ cum_pos; } ;
struct demux_internal {int total_bytes; } ;


 void* MP_NOPTS_VALUE ;
 int assert (int) ;
 int free_index (struct demux_queue*) ;
 int talloc_free (struct demux_packet*) ;

__attribute__((used)) static void clear_queue(struct demux_queue *queue)
{
    struct demux_stream *ds = queue->ds;
    struct demux_internal *in = ds->in;

    if (queue->head)
        in->total_bytes -= queue->tail_cum_pos - queue->head->cum_pos;

    free_index(queue);

    struct demux_packet *dp = queue->head;
    while (dp) {
        struct demux_packet *dn = dp->next;
        assert(ds->reader_head != dp);
        talloc_free(dp);
        dp = dn;
    }
    queue->head = queue->tail = ((void*)0);
    queue->keyframe_first = ((void*)0);
    queue->keyframe_latest = ((void*)0);
    queue->seek_start = queue->seek_end = queue->last_pruned = MP_NOPTS_VALUE;

    queue->correct_dts = queue->correct_pos = 1;
    queue->last_pos = -1;
    queue->last_ts = queue->last_dts = MP_NOPTS_VALUE;

    queue->is_eof = 0;
    queue->is_bof = 0;
}
