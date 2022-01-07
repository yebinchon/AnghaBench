
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_property {int dummy; } ;
struct TYPE_2__ {int stream_open_filename; int demuxer; int playing; } ;
typedef TYPE_1__ MPContext ;


 int M_PROPERTY_ERROR ;


 int M_PROPERTY_NOT_IMPLEMENTED ;
 int M_PROPERTY_OK ;

 int M_PROPERTY_UNAVAILABLE ;
 int m_property_strdup_ro (int,void*,int ) ;
 int talloc_strdup (int ,char*) ;

__attribute__((used)) static int mp_property_stream_open_filename(void *ctx, struct m_property *prop,
                                            int action, void *arg)
{
    MPContext *mpctx = ctx;
    if (!mpctx->stream_open_filename || !mpctx->playing)
        return M_PROPERTY_UNAVAILABLE;
    switch (action) {
    case 128: {
        if (mpctx->demuxer)
            return M_PROPERTY_ERROR;
        mpctx->stream_open_filename =
            talloc_strdup(mpctx->stream_open_filename, *(char **)arg);
        return M_PROPERTY_OK;
    }
    case 129:
    case 130:
        return m_property_strdup_ro(action, arg, mpctx->stream_open_filename);
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}
