
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int BIO_vprintf (int ,char const*,int ) ;
 int bio_out ;

int test_vprintf_stdout(const char *fmt, va_list ap)
{
    return BIO_vprintf(bio_out, fmt, ap);
}
