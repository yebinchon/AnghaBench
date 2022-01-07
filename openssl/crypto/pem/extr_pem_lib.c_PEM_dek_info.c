
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_snprintf (char*,int,char*,...) ;
 size_t PEM_BUFSIZE ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void PEM_dek_info(char *buf, const char *type, int len, char *str)
{
    long i;
    char *p = buf + strlen(buf);
    int j = PEM_BUFSIZE - (size_t)(p - buf), n;

    n = BIO_snprintf(p, j, "DEK-Info: %s,", type);
    if (n > 0) {
        j -= n;
        p += n;
        for (i = 0; i < len; i++) {
            n = BIO_snprintf(p, j, "%02X", 0xff & str[i]);
            if (n <= 0)
                return;
            j -= n;
            p += n;
        }
        if (j > 1)
            strcpy(p, "\n");
    }
}
