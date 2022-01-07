
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int TEST_int_gt (size_t,size_t) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_ptr_null (unsigned char*) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int parse_protos(const char *protos, unsigned char **out, size_t *outlen)
{
    size_t len, i, prefix;

    len = strlen(protos);


    if (!TEST_ptr_null(*out)

            || !TEST_ptr(*out = OPENSSL_malloc(len + 1)))
        return 0;
    *outlen = len + 1;





    memcpy(*out + 1, protos, len);

    prefix = 0;
    i = prefix + 1;
    while (i <= len) {
        if ((*out)[i] == ',') {
            if (!TEST_int_gt(i - 1, prefix))
                goto err;
            (*out)[prefix] = (unsigned char)(i - 1 - prefix);
            prefix = i;
        }
        i++;
    }
    if (!TEST_int_gt(len, prefix))
        goto err;
    (*out)[prefix] = (unsigned char)(len - prefix);
    return 1;

err:
    OPENSSL_free(*out);
    *out = ((void*)0);
    return 0;
}
