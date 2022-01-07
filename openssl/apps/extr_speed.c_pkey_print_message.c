
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_flush (int ) ;
 int BIO_printf (int ,char*,long,...) ;
 int alarm (int) ;
 int bio_err ;
 scalar_t__ mr ;

__attribute__((used)) static void pkey_print_message(const char *str, const char *str2, long num,
                               unsigned int bits, int tm)
{







    BIO_printf(bio_err,
               mr ? "+DNP:%ld:%d:%s:%s\n"
               : "Doing %ld %u bits %s %s's: ", num, bits, str, str2);
    (void)BIO_flush(bio_err);

}
