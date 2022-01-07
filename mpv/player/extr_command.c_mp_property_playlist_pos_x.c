
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int dummy; } ;
struct playlist {int current; int first; } ;
struct m_property {int dummy; } ;
struct m_option {int min; int max; int flags; int type; } ;
struct TYPE_3__ {struct playlist* playlist; } ;
typedef TYPE_1__ MPContext ;


 int CONF_RANGE ;
 int CONF_TYPE_INT ;
 int M_PROPERTY_ERROR ;


 int M_PROPERTY_NOT_IMPLEMENTED ;
 int M_PROPERTY_OK ;

 int M_PROPERTY_UNAVAILABLE ;
 int mp_set_playlist_entry (TYPE_1__*,struct playlist_entry*) ;
 int playlist_entry_count (struct playlist*) ;
 struct playlist_entry* playlist_entry_from_index (struct playlist*,int) ;
 int playlist_entry_to_index (struct playlist*,int ) ;

__attribute__((used)) static int mp_property_playlist_pos_x(void *ctx, struct m_property *prop,
                                      int action, void *arg, int base)
{
    MPContext *mpctx = ctx;
    struct playlist *pl = mpctx->playlist;
    if (!pl->first)
        return M_PROPERTY_UNAVAILABLE;

    switch (action) {
    case 130: {
        int pos = playlist_entry_to_index(pl, pl->current);
        if (pos < 0)
            return M_PROPERTY_UNAVAILABLE;
        *(int *)arg = pos + base;
        return M_PROPERTY_OK;
    }
    case 128: {
        int pos = *(int *)arg - base;
        struct playlist_entry *e = playlist_entry_from_index(pl, pos);
        if (!e)
            return M_PROPERTY_ERROR;
        mp_set_playlist_entry(mpctx, e);
        return M_PROPERTY_OK;
    }
    case 129: {
        struct m_option opt = {
            .type = CONF_TYPE_INT,
            .flags = CONF_RANGE,
            .min = base,
            .max = playlist_entry_count(pl) - 1 + base,
        };
        *(struct m_option *)arg = opt;
        return M_PROPERTY_OK;
    }
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}
