
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PEM_FLAG_EAY_COMPATIBLE ;
 unsigned int PEM_FLAG_ONLY_B64 ;
 scalar_t__ memcmp (char*,unsigned char const*,int) ;
 int memmove (char*,char*,int) ;
 int ossl_isbase64 (char) ;
 scalar_t__ ossl_iscntrl (char) ;

__attribute__((used)) static int sanitize_line(char *linebuf, int len, unsigned int flags, int first_call)
{
    int i;
    if (first_call) {


        const unsigned char utf8_bom[3] = {0xEF, 0xBB, 0xBF};

        if (len > 3 && memcmp(linebuf, utf8_bom, 3) == 0) {
            memmove(linebuf, linebuf + 3, len - 3);
            linebuf[len - 3] = 0;
            len -= 3;
        }
    }

    if (flags & PEM_FLAG_EAY_COMPATIBLE) {

        while ((len >= 0) && (linebuf[len] <= ' '))
            len--;

        len++;
    } else if (flags & PEM_FLAG_ONLY_B64) {
        for (i = 0; i < len; ++i) {
            if (!ossl_isbase64(linebuf[i]) || linebuf[i] == '\n'
                || linebuf[i] == '\r')
                break;
        }
        len = i;
    } else {


        for (i = 0; i < len; ++i) {
            if (linebuf[i] == '\n' || linebuf[i] == '\r')
                break;
            if (ossl_iscntrl(linebuf[i]))
                linebuf[i] = ' ';
        }
        len = i;
    }

    linebuf[len++] = '\n';
    linebuf[len] = '\0';
    return len;
}
