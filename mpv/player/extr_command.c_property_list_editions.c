
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct demuxer {int num_editions; int edition; struct demux_edition* editions; } ;
struct demux_edition {int metadata; } ;
struct TYPE_3__ {struct demuxer* demuxer; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_OK ;
 int M_PROPERTY_PRINT ;
 int M_PROPERTY_UNAVAILABLE ;
 int get_edition_entry ;
 int list_current ;
 int list_normal ;
 int m_property_read_list (int,void*,int,int ,TYPE_1__*) ;
 char* mp_tags_get_str (int ,char*) ;
 char* talloc_asprintf_append (char*,char*,...) ;
 char* talloc_strdup_append (char*,int ) ;

__attribute__((used)) static int property_list_editions(void *ctx, struct m_property *prop,
                                  int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct demuxer *demuxer = mpctx->demuxer;
    if (!demuxer)
        return M_PROPERTY_UNAVAILABLE;

    if (action == M_PROPERTY_PRINT) {
        char *res = ((void*)0);

        struct demux_edition *editions = demuxer->editions;
        int num_editions = demuxer->num_editions;
        int current = demuxer->edition;

        if (!num_editions)
            res = talloc_asprintf_append(res, "No editions.");

        for (int n = 0; n < num_editions; n++) {
            struct demux_edition *ed = &editions[n];

            res = talloc_strdup_append(res, n == current ? list_current
                                                         : list_normal);
            res = talloc_asprintf_append(res, "%d: ", n);
            char *title = mp_tags_get_str(ed->metadata, "title");
            if (!title)
                title = "unnamed";
            res = talloc_asprintf_append(res, "'%s'\n", title);
        }

        *(char **)arg = res;
        return M_PROPERTY_OK;
    }
    return m_property_read_list(action, arg, demuxer->num_editions,
                                get_edition_entry, mpctx);
}
