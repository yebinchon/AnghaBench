
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_F_SLG_WRITE ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (int) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int xsyslog (int *,int,char*) ;

__attribute__((used)) static int slg_write(BIO *b, const char *in, int inl)
{
    int ret = inl;
    char *buf;
    char *pp;
    int priority, i;
    static const struct {
        int strl;
        char str[10];
        int log_level;
    } mapping[] = {
        {
            6, "PANIC ", 132
        },
        {
            6, "EMERG ", 132
        },
        {
            4, "EMR ", 132
        },
        {
            6, "ALERT ", 135
        },
        {
            4, "ALR ", 135
        },
        {
            5, "CRIT ", 134
        },
        {
            4, "CRI ", 134
        },
        {
            6, "ERROR ", 131
        },
        {
            4, "ERR ", 131
        },
        {
            8, "WARNING ", 128
        },
        {
            5, "WARN ", 128
        },
        {
            4, "WAR ", 128
        },
        {
            7, "NOTICE ", 129
        },
        {
            5, "NOTE ", 129
        },
        {
            4, "NOT ", 129
        },
        {
            5, "INFO ", 130
        },
        {
            4, "INF ", 130
        },
        {
            6, "DEBUG ", 133
        },
        {
            4, "DBG ", 133
        },
        {
            0, "", 131
        }

    };

    if ((buf = OPENSSL_malloc(inl + 1)) == ((void*)0)) {
        BIOerr(BIO_F_SLG_WRITE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    memcpy(buf, in, inl);
    buf[inl] = '\0';

    i = 0;
    while (strncmp(buf, mapping[i].str, mapping[i].strl) != 0)
        i++;
    priority = mapping[i].log_level;
    pp = buf + mapping[i].strl;

    xsyslog(b, priority, pp);

    OPENSSL_free(buf);
    return ret;
}
