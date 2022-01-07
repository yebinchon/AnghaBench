
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeParser {int dummy; } ;


 int fprintf (int ,char*,unsigned int) ;
 struct RangeParser* rangeparse_create () ;
 int rangeparse_destroy (struct RangeParser*) ;
 int rangeparse_err (struct RangeParser*,unsigned long long*,unsigned long long*) ;
 int rangeparse_next (struct RangeParser*,unsigned char const*,size_t*,size_t,unsigned int*,unsigned int*) ;
 int stderr ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
rangefile_test_error(const char *buf, unsigned long long in_line_number, unsigned long long in_char_number, unsigned which_test)
{
    size_t length = strlen(buf);
    size_t offset = 0;
    struct RangeParser *p;
    unsigned out_begin = 0xa3a3a3a3;
    unsigned out_end = 0xa3a3a3a3;
    unsigned long long out_line_number;
    unsigned long long out_char_number;
    int x;
    bool is_found = 0;


    p = rangeparse_create();
    x = rangeparse_next(p, (const unsigned char *)buf, &offset, length, &out_begin, &out_end);
    if (!(x < 0))
        goto fail;
    rangeparse_err(p, &out_line_number, &out_char_number);
    rangeparse_destroy(p);
    if (in_line_number != out_line_number || in_char_number != out_char_number)
        goto fail;


    p = rangeparse_create();
    offset = 0;
    out_begin = 0xa3a3a3a3;
    out_end = 0xa3a3a3a3;
    is_found = 0;
    while (offset < length) {
        x = rangeparse_next(p, (const unsigned char *)buf, &offset, length, &out_begin, &out_end);
        if (x == 0 || x > 1)
            continue;
        is_found = 1;
        rangeparse_err(p, &out_line_number, &out_char_number);
        if (in_line_number != out_line_number || in_char_number != out_char_number)
            goto fail;
        else
            break;
    }
    rangeparse_destroy(p);
    if (!is_found)
        goto fail;

    return 0;
fail:
    fprintf(stderr, "[-] rangefile test fail, line=%u\n", which_test);
    return 1;
}
