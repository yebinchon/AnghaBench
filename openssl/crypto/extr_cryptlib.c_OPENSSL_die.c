
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_showfatal (char*,char const*,int,char const*) ;
 int SIGABRT ;
 int _exit (int) ;
 int abort () ;
 int raise (int ) ;

void OPENSSL_die(const char *message, const char *file, int line)
{
    OPENSSL_showfatal("%s:%d: OpenSSL internal error: %s\n",
                      file, line, message);

    abort();
}
