
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;


 int BIO_snprintf (char*,int,char*,char,scalar_t__,int,int) ;
 int OSSL_NELEM (void**) ;
 int backtrace (void**,int ) ;
 int backtrace_symbols_fd (void**,int,scalar_t__) ;
 scalar_t__ md_count ;
 int md_fail_percent ;
 scalar_t__ md_tracefd ;
 int parseit () ;
 int perror (char*) ;
 int random () ;
 int strlen (char*) ;
 int write (scalar_t__,char*,int) ;

__attribute__((used)) static int shouldfail(void)
{
    int roll = (int)(random() % 100);
    int shoulditfail = roll < md_fail_percent;


    int len;
    char buff[80];

    if (md_tracefd > 0) {
        BIO_snprintf(buff, sizeof(buff),
                     "%c C%ld %%%d R%d\n",
                     shoulditfail ? '-' : '+', md_count, md_fail_percent, roll);
        len = strlen(buff);
        if (write(md_tracefd, buff, len) != len)
            perror("shouldfail write failed");

        if (shoulditfail) {
            void *addrs[30];
            int num = backtrace(addrs, OSSL_NELEM(addrs));

            backtrace_symbols_fd(addrs, num, md_tracefd);
        }

    }


    if (md_count) {

        if (--md_count == 0)
            parseit();
    }

    return shoulditfail;
}
