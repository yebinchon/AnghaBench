
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TEST_int_eq (char,char const) ;
 int TEST_size_t_eq (size_t,size_t) ;
 int sprintf (char*,char*,int const) ;

__attribute__((used)) static int compare_hex_encoded_buffer(const char *hex_encoded,
                                      size_t hex_length,
                                      const uint8_t *raw,
                                      size_t raw_length)
{
    size_t i, j;
    char hexed[3];

    if (!TEST_size_t_eq(raw_length * 2, hex_length))
        return 1;

    for (i = j = 0; i < raw_length && j + 1 < hex_length; i++, j += 2) {
        sprintf(hexed, "%02x", raw[i]);
        if (!TEST_int_eq(hexed[0], hex_encoded[j])
                || !TEST_int_eq(hexed[1], hex_encoded[j + 1]))
            return 1;
    }

    return 0;
}
