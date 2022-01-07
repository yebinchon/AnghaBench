
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_sub_property {char* member_0; int unavailable; int member_1; } ;
struct demuxer {struct demux_edition* editions; } ;
struct demux_edition {int default_edition; int metadata; } ;
struct MPContext {struct demuxer* demuxer; } ;


 int SUB_PROP_FLAG (int ) ;
 int SUB_PROP_INT (int) ;
 int SUB_PROP_STR (char*) ;
 int m_property_read_sub (struct m_sub_property*,int,void*) ;
 char* mp_tags_get_str (int ,char*) ;

__attribute__((used)) static int get_edition_entry(int item, int action, void *arg, void *ctx)
{
    struct MPContext *mpctx = ctx;

    struct demuxer *demuxer = mpctx->demuxer;
    struct demux_edition *ed = &demuxer->editions[item];

    char *title = mp_tags_get_str(ed->metadata, "title");

    struct m_sub_property props[] = {
        {"id", SUB_PROP_INT(item)},
        {"title", SUB_PROP_STR(title),
                        .unavailable = !title},
        {"default", SUB_PROP_FLAG(ed->default_edition)},
        {0}
    };

    return m_property_read_sub(props, action, arg);
}
