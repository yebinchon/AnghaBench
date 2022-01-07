
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int END_MATCH () ;
 int EOF ;
 int MATCH_ALPHA_STRING_NOCASE (char*) ;
 int MATCH_ONE_OR_MORE (int) ;
 int MATCH_ONE_OR_NONE (int) ;
 int MATCH_ZERO_OR_MORE (int) ;
 int NEXT_CHAR () ;
 scalar_t__ NumPyOS_ascii_isalnum (int) ;
 int NumPyOS_ascii_isdigit (int) ;
 scalar_t__ NumPyOS_ascii_isspace (int) ;
 int getc (int *) ;
 int ungetc (int,int *) ;

__attribute__((used)) static int
read_numberlike_string(FILE *fp, char *buffer, size_t buflen)
{

    char *endp;
    char *p;
    int c;
    int ok;
    c = getc(fp);
    if (c == EOF) {
        return EOF;
    }

    while (NumPyOS_ascii_isspace(c)) {
        c = getc(fp);
    }


    endp = buffer;


    do { if (c == '+' || c == '-') do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0); } while (0);


    if (c == 'n' || c == 'N') {
        do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0);
        do { for (p=("an"); *p!='\0' && (c==*p || c+('a'-'A')==*p); ++p) do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0); if (*p != '\0') goto buffer_filled; } while (0);


        if (c == '(') {
            do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0);
            while (NumPyOS_ascii_isalnum(c) || c == '_') { do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0); };
            if (c == ')') {
                do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0);
            }
        }
        goto buffer_filled;
    }
    else if (c == 'i' || c == 'I') {
        do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0);
        do { for (p=("nfinity"); *p!='\0' && (c==*p || c+('a'-'A')==*p); ++p) do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0); if (*p != '\0') goto buffer_filled; } while (0);
        goto buffer_filled;
    }


    while (NumPyOS_ascii_isdigit(c)) { do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0); };

    if (c == '.') {
        do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0);
        do { ok = 0; while (NumPyOS_ascii_isdigit(c)) { do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0); ok = 1; } if (!ok) goto buffer_filled; } while (0);
    }


    if (c == 'e' || c == 'E') {
        do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0);
        do { if (c == '+' || c == '-') do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0); } while (0);
        do { ok = 0; while (NumPyOS_ascii_isdigit(c)) { do { if (c == EOF || endp >= buffer + buflen - 1) goto buffer_filled; *endp++ = (char)c; c = getc(fp); } while (0); ok = 1; } if (!ok) goto buffer_filled; } while (0);
    }

    goto buffer_filled;

buffer_filled:

    ungetc(c, fp);
    *endp = '\0';


    return (buffer == endp) ? 0 : 1;
}
