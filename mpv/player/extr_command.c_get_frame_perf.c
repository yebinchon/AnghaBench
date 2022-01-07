
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int64; } ;
struct mpv_node {TYPE_1__ u; } ;
struct mp_pass_perf {int last; int avg; int peak; int count; int* samples; } ;
struct mp_frame_perf {int count; int * desc; struct mp_pass_perf* perf; } ;


 int MPV_FORMAT_INT64 ;
 int MPV_FORMAT_NODE_ARRAY ;
 int MPV_FORMAT_NODE_MAP ;
 struct mpv_node* node_array_add (struct mpv_node*,int ) ;
 struct mpv_node* node_map_add (struct mpv_node*,char*,int ) ;
 int node_map_add_string (struct mpv_node*,char*,int ) ;

__attribute__((used)) static void get_frame_perf(struct mpv_node *node, struct mp_frame_perf *perf)
{
    for (int i = 0; i < perf->count; i++) {
        struct mp_pass_perf *data = &perf->perf[i];
        struct mpv_node *pass = node_array_add(node, MPV_FORMAT_NODE_MAP);

        node_map_add_string(pass, "desc", perf->desc[i]);
        node_map_add(pass, "last", MPV_FORMAT_INT64)->u.int64 = data->last;
        node_map_add(pass, "avg", MPV_FORMAT_INT64)->u.int64 = data->avg;
        node_map_add(pass, "peak", MPV_FORMAT_INT64)->u.int64 = data->peak;
        node_map_add(pass, "count", MPV_FORMAT_INT64)->u.int64 = data->count;
        struct mpv_node *samples = node_map_add(pass, "samples", MPV_FORMAT_NODE_ARRAY);
        for (int n = 0; n < data->count; n++)
            node_array_add(samples, MPV_FORMAT_INT64)->u.int64 = data->samples[n];
    }
}
