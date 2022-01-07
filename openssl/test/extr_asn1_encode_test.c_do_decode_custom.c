
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_PACKAGE ;
typedef int TEST_CUSTOM_DATA ;
typedef int EXPECTED ;


 int OPENSSL_free (unsigned char*) ;
 int do_decode (unsigned char*,size_t,int const*,size_t,int const*) ;
 size_t make_custom_der (int const*,unsigned char**,int) ;

__attribute__((used)) static int do_decode_custom(const TEST_CUSTOM_DATA *custom_data,
                            const EXPECTED *expected, size_t expected_size,
                            const TEST_PACKAGE *package)
{
    unsigned char *encoding = ((void*)0);




    size_t encoding_length = make_custom_der(custom_data, &encoding, 1);
    int ret;

    if (encoding_length == 0)
        return -1;

    ret = do_decode(encoding, encoding_length, expected, expected_size,
                    package);
    OPENSSL_free(encoding);

    return ret;
}
