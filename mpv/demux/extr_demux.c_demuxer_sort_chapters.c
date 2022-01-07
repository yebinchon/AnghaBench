
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct demux_chapter {int dummy; } ;
struct TYPE_3__ {scalar_t__ num_chapters; int chapters; } ;
typedef TYPE_1__ demuxer_t ;


 int chapter_compare ;
 int qsort (int ,scalar_t__,int,int ) ;

__attribute__((used)) static void demuxer_sort_chapters(demuxer_t *demuxer)
{
    if (demuxer->num_chapters) {
        qsort(demuxer->chapters, demuxer->num_chapters,
            sizeof(struct demux_chapter), chapter_compare);
    }
}
