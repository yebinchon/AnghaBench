
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strbuf ;
typedef int FILE ;


 int EOF ;
 int free (int *) ;
 int getc (int *) ;
 int * savechar (int *,int,int) ;

__attribute__((used)) static strbuf *
readline(strbuf *line, FILE *in) {
    int c, i = 0;

    while ((c = getc(in)) != EOF) {
        line = savechar(line, i++, c);
        if (c == '\n') {
            break;
        }
    }
    if (i == 0) {
        if (line != 0) {
            free(line);
        }
        return 0;
    }
    return savechar(line, i, 0);
}
