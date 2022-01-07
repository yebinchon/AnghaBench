
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct demuxer {int global; int log; TYPE_2__* priv; } ;
struct TYPE_10__ {int own_stream; int stream; TYPE_1__* opts; } ;
typedef TYPE_2__ lavf_priv_t ;
struct TYPE_11__ {scalar_t__ start; int len; } ;
typedef TYPE_3__ bstr ;
struct TYPE_9__ {char* sub_cp; } ;


 int MP_ICONV_VERBOSE ;
 int MP_INFO (struct demuxer*,char*,char*) ;
 int MP_WARN (struct demuxer*,char*) ;
 scalar_t__ mp_charset_guess (TYPE_2__*,int ,TYPE_3__,char*,int ) ;
 int mp_charset_is_utf16 (char*) ;
 scalar_t__ mp_charset_is_utf8 (char*) ;
 TYPE_3__ mp_iconv_to_utf8 (int ,TYPE_3__,char*,int ) ;
 int stream_memory_open (int ,scalar_t__,int ) ;
 TYPE_3__ stream_read_complete (int ,int *,int) ;
 int talloc_free (void*) ;
 int talloc_steal (void*,scalar_t__) ;

__attribute__((used)) static void convert_charset(struct demuxer *demuxer)
{
    lavf_priv_t *priv = demuxer->priv;
    char *cp = priv->opts->sub_cp;
    if (!cp || mp_charset_is_utf8(cp))
        return;
    bstr data = stream_read_complete(priv->stream, ((void*)0), 128 * 1024 * 1024);
    if (!data.start) {
        MP_WARN(demuxer, "File too big (or error reading) - skip charset probing.\n");
        return;
    }
    void *alloc = data.start;
    cp = (char *)mp_charset_guess(priv, demuxer->log, data, cp, 0);
    if (cp && !mp_charset_is_utf8(cp))
        MP_INFO(demuxer, "Using subtitle charset: %s\n", cp);

    if (!mp_charset_is_utf16(cp) && !mp_charset_is_utf8(cp)) {
        bstr conv = mp_iconv_to_utf8(demuxer->log, data, cp, MP_ICONV_VERBOSE);
        if (conv.start && conv.start != data.start)
            talloc_steal(alloc, conv.start);
        if (conv.start)
            data = conv;
    }
    if (data.start) {
        priv->stream = stream_memory_open(demuxer->global, data.start, data.len);
        priv->own_stream = 1;
    }
    talloc_free(alloc);
}
