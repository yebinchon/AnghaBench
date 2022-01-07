
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;
typedef int mp_lexer_t ;


 int MP_ENOENT ;
 scalar_t__ MZ_OK ;
 scalar_t__ memzip_locate (char const*,void**,size_t*) ;
 int * mp_lexer_new_from_str_len (int ,char const*,int ,int ) ;
 int mp_raise_OSError (int ) ;
 int qstr_from_str (char const*) ;

mp_lexer_t *mp_lexer_new_from_file(const char *filename)
{
    void *data;
    size_t len;

    if (memzip_locate(filename, &data, &len) != MZ_OK) {
        mp_raise_OSError(MP_ENOENT);
    }

    return mp_lexer_new_from_str_len(qstr_from_str(filename), (const char *)data, (mp_uint_t)len, 0);
}
