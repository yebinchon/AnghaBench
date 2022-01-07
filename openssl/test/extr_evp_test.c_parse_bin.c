
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* OPENSSL_hexstr2buf (char const*,long*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int TEST_info (char*,char const*) ;
 int TEST_openssl_errors () ;
 int TEST_ptr (unsigned char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;
 unsigned char* unescape (char const*,size_t,size_t*) ;

__attribute__((used)) static int parse_bin(const char *value, unsigned char **buf, size_t *buflen)
{
    long len;


    if (strcmp(value, "NULL") == 0) {
        *buf = ((void*)0);
        *buflen = 0;
        return 1;
    }


    if (*value == '\0') {





        *buf = OPENSSL_malloc(1);
        if (*buf == ((void*)0))
            return 0;
        **buf = 0;
        *buflen = 0;
        return 1;
    }


    if (value[0] == '"') {
        size_t vlen = strlen(++value);

        if (vlen == 0 || value[vlen - 1] != '"')
            return 0;
        vlen--;
        *buf = unescape(value, vlen, buflen);
        return *buf == ((void*)0) ? 0 : 1;
    }


    if (!TEST_ptr(*buf = OPENSSL_hexstr2buf(value, &len))) {
        TEST_info("Can't convert %s", value);
        TEST_openssl_errors();
        return -1;
    }

    *buflen = len;
    return 1;
}
