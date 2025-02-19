
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_8__ {TYPE_3__* playing; TYPE_2__* demuxer; TYPE_1__* opts; } ;
struct TYPE_7__ {char* title; } ;
struct TYPE_6__ {int metadata; } ;
struct TYPE_5__ {char* media_title; } ;
typedef TYPE_4__ MPContext ;


 int m_property_strdup_ro (int,void*,char*) ;
 int mp_property_filename (void*,struct m_property*,int,void*) ;
 char* mp_tags_get_str (int ,char*) ;

__attribute__((used)) static int mp_property_media_title(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    MPContext *mpctx = ctx;
    char *name = ((void*)0);
    if (mpctx->opts->media_title)
        name = mpctx->opts->media_title;
    if (name && name[0])
        return m_property_strdup_ro(action, arg, name);
    if (mpctx->demuxer) {
        name = mp_tags_get_str(mpctx->demuxer->metadata, "service_name");
        if (name && name[0])
            return m_property_strdup_ro(action, arg, name);
        name = mp_tags_get_str(mpctx->demuxer->metadata, "title");
        if (name && name[0])
            return m_property_strdup_ro(action, arg, name);
        name = mp_tags_get_str(mpctx->demuxer->metadata, "icy-title");
        if (name && name[0])
            return m_property_strdup_ro(action, arg, name);
    }
    if (mpctx->playing && mpctx->playing->title)
        return m_property_strdup_ro(action, arg, mpctx->playing->title);
    return mp_property_filename(ctx, prop, action, arg);
}
