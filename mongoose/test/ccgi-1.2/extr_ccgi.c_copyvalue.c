
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strbuf ;
typedef int FILE ;


 int EOF ;
 int fputc (char const,int *) ;
 int getc (int *) ;
 int * savechar (int *,int,char const) ;

__attribute__((used)) static strbuf *
copyvalue(const char *boundary, FILE *in, const int wantfile,
    strbuf *value, FILE *out)
{
    int c, i, k, matched;

    matched = k = 0;

    while ((c = getc(in)) != EOF) {
        if (matched > 0 && c != boundary[matched]) {
            for (i = 0; i < matched; i++) {
                if (wantfile == 0) {
                    value = savechar(value, k++, boundary[i]);
                }
                else if (out != 0) {
                    fputc(boundary[i], out);
                }
            }
            matched = 0;
        }



        if (c == boundary[matched]) {
            if (boundary[++matched] == 0) {
                break;
            }
            continue;
        }



        if (wantfile == 0) {
            value = savechar(value, k++, c);
        }
        else if (out != 0) {
            fputc(c, out);
        }
    }
    if (wantfile == 0) {
        return savechar(value, k, 0);
    }
    return 0;
}
