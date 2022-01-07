
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ServiceProbeMatch {int is_softmatch; struct ServiceProbeMatch* next; } ;
struct ServiceProbeFallback {struct ServiceProbeFallback* next; } ;
struct RangeList {int count; int member_0; } ;
struct NmapServiceProbeList {char* filename; unsigned int line_number; int count; struct NmapServiceProbe** list; int exclude; } ;
struct NmapServiceProbe {struct ServiceProbeFallback* fallback; void* rarity; void* tcpwrappedms; void* totalwaitms; struct ServiceProbeMatch* match; int sslports; int ports; } ;
typedef enum SvcP_RecordType { ____Placeholder_SvcP_RecordType } SvcP_RecordType ;
 int fprintf (int ,char*,char const*,unsigned int,unsigned int,...) ;
 scalar_t__ ispunct (char const) ;
 scalar_t__ isspace (char const) ;
 struct ServiceProbeFallback* parse_fallback (struct NmapServiceProbeList*,char const*,size_t,size_t) ;
 struct ServiceProbeMatch* parse_match (struct NmapServiceProbeList*,char const*,size_t,size_t) ;
 void* parse_number (struct NmapServiceProbeList*,char const*,size_t,size_t) ;
 struct RangeList parse_ports (struct NmapServiceProbeList*,char const*,size_t,size_t) ;
 int parse_probe (struct NmapServiceProbeList*,char const*,size_t,size_t) ;
 int parse_type (char const*,size_t*,size_t) ;
 int rangelist_merge (int *,struct RangeList*) ;
 int rangelist_remove_all (struct RangeList*) ;
 int stderr ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
parse_line(struct NmapServiceProbeList *list, const char *line)
{
    const char *filename = list->filename;
    unsigned line_number = list->line_number;
    size_t line_length;
    size_t offset;
    enum SvcP_RecordType type;
    struct RangeList ranges = {0};
    struct NmapServiceProbe *probe;



    offset = 0;
    line_length = strlen(line);
    while (offset && isspace(line[offset]))
        offset++;
    while (line_length && isspace(line[line_length-1]))
        line_length--;


    if (ispunct(line[offset]))
        return;


    if (offset >= line_length)
        return;


    type = parse_type(line, &offset, line_length);


    switch ((int)type) {
        case 128:
            fprintf(stderr, "%s:%u:%u: unknown type: '%.*s'\n", filename, line_number, (unsigned)offset, (int)offset-0, line);
            return;
        case 138:
            if (list->count) {


                fprintf(stderr, "%s:%u:%u: 'Exclude' directive only valid before any 'Probe'\n", filename, line_number, (unsigned)offset);
            } else {
                ranges = parse_ports(list, line, offset, line_length);
                if (ranges.count == 0) {
                    fprintf(stderr, "%s:%u:%u: 'Exclude' bad format\n", filename, line_number, (unsigned)offset);
                } else {
                    rangelist_merge(&list->exclude, &ranges);
                    rangelist_remove_all(&ranges);
                }
            }
            return;
        case 134:


            parse_probe(list, line, offset, line_length);
            return;
    }





    if (list->count == 0) {
        fprintf(stderr, "%s:%u:%u: 'directive only valid after a 'Probe'\n", filename, line_number, (unsigned)offset);
        return;
    }
    probe = list->list[list->count-1];

    switch ((int)type) {
        case 135:
            ranges = parse_ports(list, line, offset, line_length);
            if (ranges.count == 0) {
                fprintf(stderr, "%s:%u:%u: bad ports format\n", filename, line_number, (unsigned)offset);
            } else {
                rangelist_merge(&probe->ports, &ranges);
                rangelist_remove_all(&ranges);
            }
            break;
        case 131:
            ranges = parse_ports(list, line, offset, line_length);
            if (ranges.count == 0) {
                fprintf(stderr, "%s:%u:%u: bad ports format\n", filename, line_number, (unsigned)offset);
            } else {
                rangelist_merge(&probe->sslports, &ranges);
                rangelist_remove_all(&ranges);
            }
            break;
        case 136:
        case 132:
            {
                struct ServiceProbeMatch *match;

                match = parse_match(list, line, offset, line_length);
                if (match) {
                    struct ServiceProbeMatch **r_match;


                    for (r_match = &probe->match; *r_match; r_match = &(*r_match)->next)
                        ;
                    match->next = *r_match;
                    *r_match = match;
                    match->is_softmatch = (type == 132);
                }
            }
            break;

        case 129:
            probe->totalwaitms = parse_number(list, line, offset, line_length);
            break;
        case 130:
            probe->tcpwrappedms = parse_number(list, line, offset, line_length);
            break;
        case 133:
            probe->rarity = parse_number(list, line, offset, line_length);
            break;
        case 137:
        {
            struct ServiceProbeFallback *fallback;
            fallback = parse_fallback(list, line, offset, line_length);
            if (fallback) {
                fallback->next = probe->fallback;
                probe->fallback = fallback;
            }
        }
            break;
    }

}
