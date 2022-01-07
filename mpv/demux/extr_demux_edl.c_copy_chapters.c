
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct demuxer {int num_chapters; TYPE_1__* chapters; } ;
struct demux_chapter {double pts; int metadata; } ;
struct TYPE_2__ {int metadata; } ;


 int MP_TARRAY_APPEND (int *,struct demux_chapter*,int,struct demux_chapter) ;
 double demuxer_chapter_time (struct demuxer*,int) ;
 int mp_tags_dup (struct demux_chapter*,int ) ;

__attribute__((used)) static void copy_chapters(struct demux_chapter **chapters, int *num_chapters,
                          struct demuxer *src, double start, double len,
                          double dest_offset)
{
    for (int n = 0; n < src->num_chapters; n++) {
        double time = demuxer_chapter_time(src, n);
        if (time >= start && time <= start + len) {
            struct demux_chapter ch = {
                .pts = dest_offset + time - start,
                .metadata = mp_tags_dup(*chapters, src->chapters[n].metadata),
            };
            MP_TARRAY_APPEND(((void*)0), *chapters, *num_chapters, ch);
        }
    }
}
