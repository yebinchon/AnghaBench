
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {char* title; char* filename; struct playlist_entry* next; } ;
struct playlist {struct playlist_entry* current; struct playlist_entry* first; } ;
struct m_property {int dummy; } ;
struct get_playlist_ctx {TYPE_1__* mpctx; } ;
struct TYPE_3__ {struct playlist* playlist; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_OK ;
 int M_PROPERTY_PRINT ;
 int bstr0 (char*) ;
 char* cut_osd_list (TYPE_1__*,char*,int ) ;
 int get_playlist_entry ;
 char* list_current ;
 char* list_normal ;
 int m_property_read_list (int,void*,int ,int ,struct get_playlist_ctx*) ;
 char* mp_basename (char*) ;
 int mp_is_url (int ) ;
 int playlist_entry_count (struct playlist*) ;
 int playlist_entry_to_index (struct playlist*,struct playlist_entry*) ;
 char* talloc_asprintf_append (char*,char*,char const*,char*) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static int mp_property_playlist(void *ctx, struct m_property *prop,
                                int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (action == M_PROPERTY_PRINT) {
        struct playlist *pl = mpctx->playlist;
        char *res = talloc_strdup(((void*)0), "");

        for (struct playlist_entry *e = pl->first; e; e = e->next)
        {
            char *p = e->title;
            if (!p) {
                p = e->filename;
                if (!mp_is_url(bstr0(p))) {
                    char *s = mp_basename(e->filename);
                    if (s[0])
                        p = s;
                }
            }
            const char *m = pl->current == e ? list_current : list_normal;
            res = talloc_asprintf_append(res, "%s%s\n", m, p);
        }

        *(char **)arg =
            cut_osd_list(mpctx, res, playlist_entry_to_index(pl, pl->current));
        return M_PROPERTY_OK;
    }

    struct get_playlist_ctx p = {.mpctx = mpctx};
    return m_property_read_list(action, arg, playlist_entry_count(mpctx->playlist),
                                get_playlist_entry, &p);
}
