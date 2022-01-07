
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BIO_snprintf (char*,int,char*,unsigned char,...) ;
 int DUMP_WIDTH_LESS_INDENT (int) ;
 scalar_t__ SPACE (char*,int,int) ;
 unsigned char* os_toascii ;
 char* os_toebcdic ;
 int strcpy (char*,char*) ;

int BIO_dump_indent_cb(int (*cb) (const void *data, size_t len, void *u),
                       void *u, const void *v, int len, int indent)
{
    const unsigned char *s = v;
    int ret = 0;
    char buf[288 + 1];
    int i, j, rows, n;
    unsigned char ch;
    int dump_width;

    if (indent < 0)
        indent = 0;
    else if (indent > 64)
        indent = 64;

    dump_width = DUMP_WIDTH_LESS_INDENT(indent);
    rows = len / dump_width;
    if ((rows * dump_width) < len)
        rows++;
    for (i = 0; i < rows; i++) {
        n = BIO_snprintf(buf, sizeof(buf), "%*s%04x - ", indent, "",
                         i * dump_width);
        for (j = 0; j < dump_width; j++) {
            if (SPACE(buf, n, 3)) {
                if (((i * dump_width) + j) >= len) {
                    strcpy(buf + n, "   ");
                } else {
                    ch = *(s + i * dump_width + j) & 0xff;
                    BIO_snprintf(buf + n, 4, "%02x%c", ch,
                                 j == 7 ? '-' : ' ');
                }
                n += 3;
            }
        }
        if (SPACE(buf, n, 2)) {
            strcpy(buf + n, "  ");
            n += 2;
        }
        for (j = 0; j < dump_width; j++) {
            if (((i * dump_width) + j) >= len)
                break;
            if (SPACE(buf, n, 1)) {
                ch = *(s + i * dump_width + j) & 0xff;

                buf[n++] = ((ch >= ' ') && (ch <= '~')) ? ch : '.';





                buf[n] = '\0';
            }
        }
        if (SPACE(buf, n, 1)) {
            buf[n++] = '\n';
            buf[n] = '\0';
        }




        ret += cb((void *)buf, n, u);
    }
    return ret;
}
