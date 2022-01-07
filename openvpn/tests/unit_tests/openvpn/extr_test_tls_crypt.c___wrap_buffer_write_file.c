
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;


 char* BSTR (struct buffer const*) ;
 int check_expected (char const*) ;
 int mock () ;

bool
__wrap_buffer_write_file(const char *filename, const struct buffer *buf)
{
    const char *pem = BSTR(buf);
    check_expected(filename);
    check_expected(pem);

    return mock();
}
