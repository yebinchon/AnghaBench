
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uInt ;
struct info {int zlib; int size; int ctx; TYPE_1__* zs; scalar_t__ first; } ;
struct TYPE_2__ {unsigned char* next_in; scalar_t__ avail_out; unsigned char* next_out; scalar_t__ avail_in; } ;


 int CHUNK ;
 int HMAC_crunch (int ,unsigned char*,size_t) ;
 int Z_NO_FLUSH ;
 int inflate (TYPE_1__*,int ) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static size_t
swfcrunch(void *ptr, size_t size, size_t nmemb, void *stream)
{
    struct info *i = stream;
    char *p = ptr;
    size_t len = size * nmemb;

    if (i->first)
    {
        i->first = 0;

        if (!strncmp(p, "CWS", 3))
        {
            *p = 'F';
            i->zlib = 1;
        }
        HMAC_crunch(i->ctx, (unsigned char *)p, 8);
        p += 8;
        len -= 8;
        i->size = 8;
    }

    if (i->zlib)
    {
        unsigned char out[CHUNK];
        i->zs->next_in = (unsigned char *)p;
        i->zs->avail_in = (uInt)len;
        do
        {
            i->zs->avail_out = CHUNK;
            i->zs->next_out = out;
            inflate(i->zs, Z_NO_FLUSH);
            len = CHUNK - i->zs->avail_out;
            i->size += (int)len;
            HMAC_crunch(i->ctx, out, len);
        }
        while (i->zs->avail_out == 0);
    }
    else
    {
        i->size += (int)len;
        HMAC_crunch(i->ctx, (unsigned char *)p, len);
    }
    return size * nmemb;
}
