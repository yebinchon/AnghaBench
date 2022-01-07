
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct mpv_node {int dummy; } ;
struct m_property {int dummy; } ;
struct TYPE_8__ {int playback_initialized; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_OK ;


 char* chapter_display_name (TYPE_1__*,int) ;
 double chapter_start_time (TYPE_1__*,int) ;
 int get_chapter_count (TYPE_1__*) ;
 int get_chapter_entry ;
 int get_current_chapter (TYPE_1__*) ;
 char* list_current ;
 char* list_normal ;
 int m_property_read_list (int,void*,int,int ,TYPE_1__*) ;
 char* mp_format_time (double,int) ;
 int parse_node_chapters (TYPE_1__*,struct mpv_node*) ;
 char* talloc_asprintf_append (char*,char*,...) ;
 int talloc_free (char*) ;

__attribute__((used)) static int mp_property_list_chapters(void *ctx, struct m_property *prop,
                                     int action, void *arg)
{
    MPContext *mpctx = ctx;
    int count = get_chapter_count(mpctx);
    switch (action) {
    case 129: {
        int cur = mpctx->playback_initialized ? get_current_chapter(mpctx) : -1;
        char *res = ((void*)0);
        int n;

        if (count < 1) {
            res = talloc_asprintf_append(res, "No chapters.");
        }

        for (n = 0; n < count; n++) {
            char *name = chapter_display_name(mpctx, n);
            double t = chapter_start_time(mpctx, n);
            char* time = mp_format_time(t, 0);
            res = talloc_asprintf_append(res, "%s", time);
            talloc_free(time);
            const char *m = n == cur ? list_current : list_normal;
            res = talloc_asprintf_append(res, "   %s%s\n", m, name);
            talloc_free(name);
        }

        *(char **)arg = res;
        return M_PROPERTY_OK;
    }
    case 128: {
        struct mpv_node *given_chapters = arg;
        return parse_node_chapters(mpctx, given_chapters);
    }
    }
    return m_property_read_list(action, arg, count, get_chapter_entry, mpctx);
}
