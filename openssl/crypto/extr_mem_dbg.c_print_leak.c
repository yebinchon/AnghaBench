
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tm {char* tm_hour; int tm_sec; int tm_min; } ;
typedef int buf ;
struct TYPE_6__ {char* order; size_t array_siz; int array; int num; int addr; int threadid; int line; int file; int time; } ;
struct TYPE_5__ {int bytes; int chunks; int print_cb_arg; int (* print_cb ) (char*,size_t,int ) ;} ;
typedef TYPE_1__ MEM_LEAK ;
typedef TYPE_2__ MEM ;


 int BIO_snprintf (char*,size_t,char*,char*,int ,int ) ;
 char* OPENSSL_buf2hexstr (unsigned char const*,int) ;
 int OPENSSL_free (char*) ;
 char** backtrace_symbols (int ,size_t) ;
 int fprintf (int ,char*,char*) ;
 int free (char**) ;
 struct tm* localtime (int *) ;
 int stderr ;
 int stub1 (char*,size_t,int ) ;

__attribute__((used)) static void print_leak(const MEM *m, MEM_LEAK *l)
{
    char buf[1024];
    char *bufp = buf, *hex;
    size_t len = sizeof(buf);
    int n;
    struct tm *lcl = ((void*)0);

    lcl = localtime(&m->time);
    n = BIO_snprintf(bufp, len, "[%02d:%02d:%02d] ",
                     lcl->tm_hour, lcl->tm_min, lcl->tm_sec);
    if (n <= 0) {
        bufp[0] = '\0';
        return;
    }
    bufp += n;
    len -= n;

    n = BIO_snprintf(bufp, len, "%5lu file=%s, line=%d, ",
                     m->order, m->file, m->line);
    if (n <= 0)
        return;
    bufp += n;
    len -= n;

    hex = OPENSSL_buf2hexstr((const unsigned char *)&m->threadid,
                             sizeof(m->threadid));
    n = BIO_snprintf(bufp, len, "thread=%s, number=%d, address=%p\n", hex,
                     m->num, m->addr);
    OPENSSL_free(hex);
    if (n <= 0)
        return;
    bufp += n;
    len -= n;

    l->print_cb(buf, (size_t)(bufp - buf), l->print_cb_arg);
    l->chunks++;
    l->bytes += m->num;


    {
        size_t i;
        char **strings = backtrace_symbols(m->array, m->array_siz);

        for (i = 0; i < m->array_siz; i++)
            fprintf(stderr, "##> %s\n", strings[i]);
        free(strings);
    }

}
