
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* fgets (char*,unsigned int,int *) ;
 scalar_t__ is_comment (char*) ;
 int trim (char*,size_t) ;

__attribute__((used)) static char *
get_next_line(FILE *fp, unsigned *line_number, char *line, size_t sizeof_line)
{
    if (line[0] != '\0')
        return line;

    for (;;) {
        char *p;

        p = fgets(line, (unsigned)sizeof_line, fp);
        if (p == ((void*)0)) {
            line[0] = '\0';
            return ((void*)0);
        }
        (*line_number)++;

        trim(line, sizeof_line);
        if (is_comment(line))
            continue;
        if (line[0] == '\0')
            continue;

        return line;
    }
}
