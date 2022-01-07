
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef void* u_short ;
typedef int u_char ;


 int NGX_EILSEQ ;
 void** malloc (int) ;
 int ngx_free (void**) ;
 int ngx_memcpy (void**,void**,size_t) ;
 int ngx_set_errno (int ) ;
 int ngx_strlen (int*) ;
 int ngx_utf8_decode (int**,int) ;

__attribute__((used)) static u_short *
ngx_utf8_to_utf16(u_short *utf16, u_char *utf8, size_t *len)
{
    u_char *p;
    u_short *u, *last;
    uint32_t n;

    p = utf8;
    u = utf16;
    last = utf16 + *len;

    while (u < last) {

        if (*p < 0x80) {
            *u++ = (u_short) *p;

            if (*p == 0) {
                *len = u - utf16;
                return utf16;
            }

            p++;

            continue;
        }

        if (u + 1 == last) {
            *len = u - utf16;
            break;
        }

        n = ngx_utf8_decode(&p, 4);

        if (n > 0x10ffff) {
            ngx_set_errno(NGX_EILSEQ);
            return ((void*)0);
        }

        if (n > 0xffff) {
            n -= 0x10000;
            *u++ = (u_short) (0xd800 + (n >> 10));
            *u++ = (u_short) (0xdc00 + (n & 0x03ff));
            continue;
        }

        *u++ = (u_short) n;
    }



    u = malloc(((p - utf8) + ngx_strlen(p) + 1) * sizeof(u_short));
    if (u == ((void*)0)) {
        return ((void*)0);
    }

    ngx_memcpy(u, utf16, *len * 2);

    utf16 = u;
    u += *len;

    for ( ;; ) {

        if (*p < 0x80) {
            *u++ = (u_short) *p;

            if (*p == 0) {
                *len = u - utf16;
                return utf16;
            }

            p++;

            continue;
        }

        n = ngx_utf8_decode(&p, 4);

        if (n > 0x10ffff) {
            ngx_free(utf16);
            ngx_set_errno(NGX_EILSEQ);
            return ((void*)0);
        }

        if (n > 0xffff) {
            n -= 0x10000;
            *u++ = (u_short) (0xd800 + (n >> 10));
            *u++ = (u_short) (0xdc00 + (n & 0x03ff));
            continue;
        }

        *u++ = (u_short) n;
    }


}
