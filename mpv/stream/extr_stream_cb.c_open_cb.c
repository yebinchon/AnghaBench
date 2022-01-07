
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ (* seek_fn ) (int ,int ) ;int cookie; scalar_t__ cancel_fn; int close_fn; int read_fn; int member_0; } ;
struct priv {TYPE_2__ info; int cancel; } ;
struct TYPE_10__ {int seekable; int fast_skip; scalar_t__ cancel; int close; int get_size; int fill_buffer; int seek; int url; int global; struct priv* priv; } ;
typedef TYPE_1__ stream_t ;
typedef int (* mpv_stream_cb_open_ro_fn ) (void*,int ,TYPE_2__*) ;
typedef TYPE_2__ mpv_stream_cb_info ;
typedef int bstr ;


 int MPV_ERROR_LOADING_FAILED ;
 int MP_FATAL (TYPE_1__*,char*) ;
 int MP_WARN (TYPE_1__*,char*) ;
 int STREAM_ERROR ;
 int STREAM_OK ;
 int STREAM_UNSUPPORTED ;
 int bstr0 (int ) ;
 char* bstrto0 (TYPE_1__*,int ) ;
 int fill_buffer ;
 int get_size ;
 int mp_cancel_new (struct priv*) ;
 int mp_cancel_set_cb (int ,scalar_t__,int ) ;
 int mp_cancel_set_parent (int ,scalar_t__) ;
 int mp_split_proto (int ,int *) ;
 int mp_streamcb_lookup (int ,char*,void**,int (*) (void*,int ,TYPE_2__*)) ;
 struct priv* p ;
 int s_close ;
 int seek ;
 scalar_t__ stub1 (int ,int ) ;
 struct priv* talloc_ptrtype (TYPE_1__*,int ) ;

__attribute__((used)) static int open_cb(stream_t *stream)
{
    struct priv *p = talloc_ptrtype(stream, p);
    stream->priv = p;

    bstr bproto = mp_split_proto(bstr0(stream->url), ((void*)0));
    char *proto = bstrto0(stream, bproto);

    void *user_data;
    mpv_stream_cb_open_ro_fn open_fn;

    if (!mp_streamcb_lookup(stream->global, proto, &user_data, &open_fn))
        return STREAM_UNSUPPORTED;

    mpv_stream_cb_info info = {0};

    int r = open_fn(user_data, stream->url, &info);
    if (r < 0) {
        if (r != MPV_ERROR_LOADING_FAILED)
            MP_WARN(stream, "unknown error from user callback\n");
        return STREAM_ERROR;
    }

    if (!info.read_fn || !info.close_fn) {
        MP_FATAL(stream, "required read_fn or close_fn callbacks not set.\n");
        return STREAM_ERROR;
    }

    p->info = info;

    if (p->info.seek_fn && p->info.seek_fn(p->info.cookie, 0) >= 0) {
        stream->seek = seek;
        stream->seekable = 1;
    }
    stream->fast_skip = 1;
    stream->fill_buffer = fill_buffer;
    stream->get_size = get_size;
    stream->close = s_close;

    if (p->info.cancel_fn && stream->cancel) {
        p->cancel = mp_cancel_new(p);
        mp_cancel_set_parent(p->cancel, stream->cancel);
        mp_cancel_set_cb(p->cancel, p->info.cancel_fn, p->info.cookie);
    }

    return STREAM_OK;
}
