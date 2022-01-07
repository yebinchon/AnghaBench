
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int BIO ;


 int BIO_gets (int *,char*,int) ;
 int TEST_error (char*) ;
 int _UC (char) ;
 scalar_t__ isspace (int ) ;
 int strlen (char*) ;

__attribute__((used)) static char *read_to_eol(BIO *f)
{
    static char buf[1024];
    int n;

    if (!BIO_gets(f, buf, sizeof(buf)))
        return ((void*)0);

    n = strlen(buf);
    if (buf[n - 1] != '\n') {
        if (n + 1 == sizeof(buf))
            TEST_error("input too long");
        else
            TEST_error("EOF before newline");
        return ((void*)0);
    }


    while (n > 0 && isspace(_UC(buf[n - 1])))
        buf[--n] = '\0';

    return buf;
}
