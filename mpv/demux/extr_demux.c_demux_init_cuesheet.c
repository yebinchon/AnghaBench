
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demuxer {TYPE_1__* chapters; int num_chapters; int metadata; } ;
struct cue_track {int tags; int start; } ;
struct cue_file {int num_tracks; struct cue_track* tracks; } ;
struct TYPE_2__ {int metadata; } ;


 int MP_WARN (struct demuxer*,char*) ;
 int bstr0 (char*) ;
 int demuxer_add_chapter (struct demuxer*,char*,int ,int) ;
 scalar_t__ mp_check_embedded_cue (struct cue_file*) ;
 struct cue_file* mp_parse_cue (int ) ;
 char* mp_tags_get_str (int ,char*) ;
 int mp_tags_merge (int ,int ) ;
 int talloc_free (struct cue_file*) ;

__attribute__((used)) static void demux_init_cuesheet(struct demuxer *demuxer)
{
    char *cue = mp_tags_get_str(demuxer->metadata, "cuesheet");
    if (cue && !demuxer->num_chapters) {
        struct cue_file *f = mp_parse_cue(bstr0(cue));
        if (f) {
            if (mp_check_embedded_cue(f) < 0) {
                MP_WARN(demuxer, "Embedded cue sheet references more than one file. "
                        "Ignoring it.\n");
            } else {
                for (int n = 0; n < f->num_tracks; n++) {
                    struct cue_track *t = &f->tracks[n];
                    int idx = demuxer_add_chapter(demuxer, "", t->start, -1);
                    mp_tags_merge(demuxer->chapters[idx].metadata, t->tags);
                }
            }
        }
        talloc_free(f);
    }
}
