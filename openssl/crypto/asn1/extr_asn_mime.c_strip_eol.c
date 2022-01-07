
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMIME_ASCIICRLF ;

__attribute__((used)) static int strip_eol(char *linebuf, int *plen, int flags)
{
    int len = *plen;
    char *p, c;
    int is_eol = 0;

    for (p = linebuf + len - 1; len > 0; len--, p--) {
        c = *p;
        if (c == '\n') {
            is_eol = 1;
        } else if (is_eol && flags & SMIME_ASCIICRLF && c == 32) {

            continue;
        } else if (c != '\r') {
            break;
        }
    }
    *plen = len;
    return is_eol;
}
