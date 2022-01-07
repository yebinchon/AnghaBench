
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_flush (int ) ;
 int BIO_printf (int ,char*,char const*,long,int) ;
 int alarm (int) ;
 int bio_err ;
 scalar_t__ mr ;

__attribute__((used)) static void print_message(const char *s, long num, int length, int tm)
{







    BIO_printf(bio_err,
               mr ? "+DN:%s:%ld:%d\n"
               : "Doing %s %ld times on %d size blocks: ", s, num, length);
    (void)BIO_flush(bio_err);

}
