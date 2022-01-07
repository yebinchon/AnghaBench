
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ServiceProbeFallback {char* name; struct ServiceProbeFallback* next; } ;
struct NmapServiceProbeList {char* filename; int line_number; } ;


 struct ServiceProbeFallback* CALLOC (int,int) ;
 char* MALLOC (size_t) ;
 int fprintf (int ,char*,char*,int,unsigned int) ;
 scalar_t__ isspace (char const) ;
 int memcpy (char*,char const*,size_t) ;
 int stderr ;

__attribute__((used)) static struct ServiceProbeFallback *
parse_fallback(struct NmapServiceProbeList *list, const char *line, size_t offset, size_t line_length)
{



    struct ServiceProbeFallback *result = 0;

    while (offset < line_length) {
        size_t name_offset;
        size_t name_length;
        struct ServiceProbeFallback *fallback;
        struct ServiceProbeFallback **r_fallback;


        name_offset = offset;
        while (offset < line_length && !isspace(line[offset]) && line[offset] != ',')
            offset++;
        name_length = offset - name_offset;
        while (offset < line_length && (isspace(line[offset]) || line[offset] == ','))
            offset++;
        if (name_length == 0) {
            fprintf(stderr, "%s:%u:%u: name too short\n", list->filename, list->line_number, (unsigned)name_offset);
            break;
        }


        fallback = CALLOC(1, sizeof(*fallback));

        fallback->name = MALLOC(name_length+1);
        memcpy(fallback->name, line+name_offset, name_length+1);
        fallback->name[name_length] = '\0';


        for (r_fallback=&result; *r_fallback; r_fallback = &(*r_fallback)->next)
            ;
        fallback->next = *r_fallback;
        *r_fallback = fallback;

    }

    return result;
}
