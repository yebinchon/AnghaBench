
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {int stream; } ;


 int STREAM_CTRL_GET_CHAPTER_TIME ;
 int STREAM_CTRL_GET_NUM_CHAPTERS ;
 int demuxer_add_chapter (struct demuxer*,char*,double,int ) ;
 int stream_control (int ,int ,...) ;

__attribute__((used)) static void add_stream_chapters(struct demuxer *demuxer)
{
    int num = 0;
    if (stream_control(demuxer->stream, STREAM_CTRL_GET_NUM_CHAPTERS, &num) < 1)
        return;
    for (int n = 0; n < num; n++) {
        double p = n;
        if (stream_control(demuxer->stream, STREAM_CTRL_GET_CHAPTER_TIME, &p) < 1)
            continue;
        demuxer_add_chapter(demuxer, "", p, 0);
    }
}
