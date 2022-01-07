
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t zip_uint8_t ;
typedef size_t zip_uint32_t ;
struct zip_error {int dummy; } ;


 int ZIP_ER_MEMORY ;
 int * _cp437_to_unicode ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 scalar_t__ _zip_unicode_to_utf8 (int ,size_t*,size_t) ;
 scalar_t__ _zip_unicode_to_utf8_len (int ) ;
 scalar_t__ malloc (size_t) ;

zip_uint8_t *
_zip_cp437_to_utf8(const zip_uint8_t * const _cp437buf, zip_uint32_t len,
     zip_uint32_t *utf8_lenp, struct zip_error *error)
{
    zip_uint8_t *cp437buf = (zip_uint8_t *)_cp437buf;
    zip_uint8_t *utf8buf;
    zip_uint32_t buflen, i, offset;

    if (len == 0) {
 if (utf8_lenp)
     *utf8_lenp = 0;
 return ((void*)0);
    }

    buflen = 1;
    for (i=0; i<len; i++)
 buflen += _zip_unicode_to_utf8_len(_cp437_to_unicode[cp437buf[i]]);

    if ((utf8buf=(zip_uint8_t*)malloc(buflen)) == ((void*)0)) {
 _zip_error_set(error, ZIP_ER_MEMORY, 0);
 return ((void*)0);
    }

    offset = 0;
    for (i=0; i<len && offset < buflen; i++) {
 offset += _zip_unicode_to_utf8(_cp437_to_unicode[cp437buf[i]],
           utf8buf+offset, buflen - offset);
   }

    utf8buf[buflen-1] = 0;
    if (utf8_lenp)
 *utf8_lenp = buflen-1;
    return utf8buf;
}
