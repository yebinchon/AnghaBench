
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NmapServiceProbeList {char* filename; int line_number; } ;


 int fprintf (int ,char*,char*,int,unsigned int,char const) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ isprint (char const) ;
 scalar_t__ isspace (char const) ;
 int stderr ;

__attribute__((used)) static unsigned
parse_number(struct NmapServiceProbeList *list, const char *line, size_t offset, size_t line_length)
{





    unsigned number = 0;

    while (offset < line_length && isdigit(line[offset])) {
        number = number * 10;
        number = number + (line[offset] - '0');
        offset++;
    }
    while (offset < line_length && isspace(line[offset]))
        offset++;

    if (offset != line_length) {
        fprintf(stderr, "%s:%u:%u: unexpected character '%c'\n", list->filename, list->line_number, (unsigned)offset, isprint(line[offset])?line[offset]:'.');
    }

    return number;
}
