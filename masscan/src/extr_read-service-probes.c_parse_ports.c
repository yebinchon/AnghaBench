
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {int member_0; } ;
struct NmapServiceProbeList {char* filename; int line_number; } ;


 int UNUSEDPARM (size_t) ;
 int fprintf (int ,char*,char*,int,unsigned int) ;
 char* rangelist_parse_ports (struct RangeList*,char const*,unsigned int*,int ) ;
 int rangelist_remove_all (struct RangeList*) ;
 int stderr ;

__attribute__((used)) static struct RangeList
parse_ports(struct NmapServiceProbeList *list, const char *line, size_t offset, size_t line_length)
{






    unsigned is_error = 0;
    const char *p;
    struct RangeList ranges = {0};

    UNUSEDPARM(line_length);

    p = rangelist_parse_ports(&ranges, line + offset, &is_error, 0);

    if (is_error) {
        fprintf(stderr, "%s:%u:%u: bad port spec\n", list->filename, list->line_number, (unsigned)(p-line));
        rangelist_remove_all(&ranges);
    }

    return ranges;
}
