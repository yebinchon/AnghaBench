
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int echo_format; } ;
typedef TYPE_1__ nn_options_t ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int fwrite (char*,int,int,int ) ;
 int isprint (char) ;
 int stdout ;

void nn_print_message (nn_options_t *options, char *buf, int buflen)
{
    switch (options->echo_format) {
    case 128:
        return;
    case 129:
        fwrite (buf, 1, buflen, stdout);
        break;
    case 133:
        for (; buflen > 0; --buflen, ++buf) {
            if (isprint (*buf)) {
                fputc (*buf, stdout);
            } else {
                fputc ('.', stdout);
            }
        }
        fputc ('\n', stdout);
        break;
    case 130:
        fputc ('"', stdout);
        for (; buflen > 0; --buflen, ++buf) {
            switch (*buf) {
            case '\n':
                fprintf (stdout, "\\n");
                break;
            case '\r':
                fprintf (stdout, "\\r");
                break;
            case '\\':
            case '\"':
                fprintf (stdout, "\\%c", *buf);
                break;
            default:
                if (isprint (*buf)) {
                    fputc (*buf, stdout);
                } else {
                    fprintf (stdout, "\\x%02x", (unsigned char)*buf);
                }
            }
        }
        fprintf (stdout, "\"\n");
        break;
    case 131:
        if (buflen < 256) {
            fputc ('\xc4', stdout);
            fputc (buflen, stdout);
            fwrite (buf, 1, buflen, stdout);
        } else if (buflen < 65536) {
            fputc ('\xc5', stdout);
            fputc (buflen >> 8, stdout);
            fputc (buflen & 0xff, stdout);
            fwrite (buf, 1, buflen, stdout);
        } else {
            fputc ('\xc6', stdout);
            fputc (buflen >> 24, stdout);
            fputc ((buflen >> 16) & 0xff, stdout);
            fputc ((buflen >> 8) & 0xff, stdout);
            fputc (buflen & 0xff, stdout);
            fwrite (buf, 1, buflen, stdout);
        }
        break;
    case 132:
        fputc ('"', stdout);
        for (; buflen > 0; --buflen, ++buf) {
             fprintf (stdout, "\\x%02x", (unsigned char)*buf);
        }
        fprintf (stdout, "\"\n");
        break;

    }
    fflush (stdout);
}
