
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char*) ;
 int strichr (char*,char) ;
 int strlen (char*) ;

void
str_fmt(char *p, int size, int fmt)
{
    int n, m, len;

    len = strlen (p);
    switch (fmt) {
    case 129:
        for (n = size - len; n > 0; n--)
            strichr (p, ' ');
        break;
    case 130:
        for (m = size - len; m > 0; m--)
            strcat (p, " ");
        break;
    case 128:
        for (n = size - len; n > 0; n--)
            strichr (p, '0');
        break;
    case 131:
        m = (size - len) / 2;
        n = size - (len + m);
        for (; m > 0; m--)
            strcat (p, " ");
        for (; n > 0; n--)
            strichr (p, ' ');
        break;
    }
}
