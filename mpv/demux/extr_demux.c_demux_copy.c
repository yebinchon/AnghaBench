
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {int metadata; int priv; int is_streaming; int is_network; int duration; int start_time; int fully_read; int ts_resets_possible; int filetype; int partially_seekable; int seekable; int playlist; int matroska_data; int num_attachments; int attachments; int edition; int num_editions; int editions; int num_chapters; int chapters; } ;


 int mp_tags_dup (struct demuxer*,int ) ;

__attribute__((used)) static void demux_copy(struct demuxer *dst, struct demuxer *src)
{



    dst->chapters = src->chapters;
    dst->num_chapters = src->num_chapters;
    dst->editions = src->editions;
    dst->num_editions = src->num_editions;
    dst->edition = src->edition;
    dst->attachments = src->attachments;
    dst->num_attachments = src->num_attachments;
    dst->matroska_data = src->matroska_data;
    dst->playlist = src->playlist;
    dst->seekable = src->seekable;
    dst->partially_seekable = src->partially_seekable;
    dst->filetype = src->filetype;
    dst->ts_resets_possible = src->ts_resets_possible;
    dst->fully_read = src->fully_read;
    dst->start_time = src->start_time;
    dst->duration = src->duration;
    dst->is_network = src->is_network;
    dst->is_streaming = src->is_streaming;
    dst->priv = src->priv;
    dst->metadata = mp_tags_dup(dst, src->metadata);
}
