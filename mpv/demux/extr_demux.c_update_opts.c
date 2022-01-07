
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demux_opts {int max_bytes; int seekable_cache; int enable_cache; char* record_file; scalar_t__ disk_cache; int min_secs_cache; scalar_t__ max_bytes_bw; scalar_t__ min_secs; } ;
struct demux_internal {int max_bytes; int seekable_cache; int using_network_cache_opts; char* record_filename; int can_record; int enable_recording; int * recorder; scalar_t__ cache; int log; int global; scalar_t__ max_bytes_bw; scalar_t__ min_secs; int can_cache; TYPE_1__* d_thread; struct demux_opts* opts; } ;
struct TYPE_2__ {int is_streaming; } ;


 scalar_t__ MPMAX (scalar_t__,int ) ;
 int MP_ERR (struct demux_internal*,char*) ;
 int MP_WARN (struct demux_internal*,char*) ;
 scalar_t__ demux_cache_create (int ,int ) ;
 int free_empty_cached_ranges (struct demux_internal*) ;
 int mp_recorder_destroy (int *) ;
 int prune_old_packets (struct demux_internal*) ;
 scalar_t__ strcmp (char*,char*) ;
 int talloc_free (char*) ;
 char* talloc_strdup (struct demux_internal*,char*) ;

__attribute__((used)) static void update_opts(struct demux_internal *in)
{
    struct demux_opts *opts = in->opts;

    in->min_secs = opts->min_secs;
    in->max_bytes = opts->max_bytes;
    in->max_bytes_bw = opts->max_bytes_bw;

    int seekable = opts->seekable_cache;
    bool is_streaming = in->d_thread->is_streaming;
    bool use_cache = is_streaming;
    if (opts->enable_cache >= 0)
        use_cache = opts->enable_cache == 1;

    if (use_cache) {
        in->min_secs = MPMAX(in->min_secs, opts->min_secs_cache);
        if (seekable < 0)
            seekable = 1;
    }
    in->seekable_cache = seekable == 1;
    in->using_network_cache_opts = is_streaming && use_cache;

    if (!in->seekable_cache)
        in->max_bytes_bw = 0;

    if (!in->can_cache) {
        in->seekable_cache = 0;
        in->min_secs = 0;
        in->max_bytes = 1;
        in->max_bytes_bw = 0;
        in->using_network_cache_opts = 0;
    }

    if (in->seekable_cache && opts->disk_cache && !in->cache) {
        in->cache = demux_cache_create(in->global, in->log);
        if (!in->cache)
            MP_ERR(in, "Failed to create file cache.\n");
    }



    char *old = in->record_filename ? in->record_filename : "";
    char *new = opts->record_file ? opts->record_file : "";
    if (strcmp(old, new) != 0) {
        if (in->recorder) {
            MP_WARN(in, "Stopping recording.\n");
            mp_recorder_destroy(in->recorder);
            in->recorder = ((void*)0);
        }
        in->record_filename = talloc_strdup(in, opts->record_file);
        talloc_free(in->record_filename);



        in->enable_recording = in->can_record;
    }


    prune_old_packets(in);


    free_empty_cached_ranges(in);
}
