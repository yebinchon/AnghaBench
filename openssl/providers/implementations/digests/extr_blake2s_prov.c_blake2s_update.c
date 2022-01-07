
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int buflen; int const* buf; } ;
typedef TYPE_1__ BLAKE2S_CTX ;


 size_t BLAKE2S_BLOCKBYTES ;
 int assert (int) ;
 int blake2s_compress (TYPE_1__*,int const*,size_t) ;
 int memcpy (int ,int const*,size_t) ;

int blake2s_update(BLAKE2S_CTX *c, const void *data, size_t datalen)
{
    const uint8_t *in = data;
    size_t fill;
    fill = sizeof(c->buf) - c->buflen;
    if (datalen > fill) {
        if (c->buflen) {
            memcpy(c->buf + c->buflen, in, fill);
            blake2s_compress(c, c->buf, BLAKE2S_BLOCKBYTES);
            c->buflen = 0;
            in += fill;
            datalen -= fill;
        }
        if (datalen > BLAKE2S_BLOCKBYTES) {
            size_t stashlen = datalen % BLAKE2S_BLOCKBYTES;




            stashlen = stashlen ? stashlen : BLAKE2S_BLOCKBYTES;
            datalen -= stashlen;
            blake2s_compress(c, in, datalen);
            in += datalen;
            datalen = stashlen;
        }
    }

    assert(datalen <= BLAKE2S_BLOCKBYTES);

    memcpy(c->buf + c->buflen, in, datalen);
    c->buflen += datalen;

    return 1;
}
