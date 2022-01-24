#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ServiceProbeFallback {char* name; struct ServiceProbeFallback* next; } ;
struct NmapServiceProbeList {char* filename; int line_number; } ;

/* Variables and functions */
 struct ServiceProbeFallback* FUNC0 (int,int) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int,unsigned int) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct ServiceProbeFallback *
FUNC5(struct NmapServiceProbeList *list, const char *line, size_t offset, size_t line_length)
{
    /* Examples:
     fallback GetRequest,GenericLines
     */
    struct ServiceProbeFallback *result = 0;
    
    while (offset < line_length) {
        size_t name_offset;
        size_t name_length;
        struct ServiceProbeFallback *fallback;
        struct ServiceProbeFallback **r_fallback;
        
        /* grab all characters until first space */
        name_offset = offset;
        while (offset < line_length && !FUNC3(line[offset]) && line[offset] != ',')
            offset++;
        name_length = offset - name_offset;
        while (offset < line_length && (FUNC3(line[offset]) || line[offset] == ','))
            offset++; /* trim trailing whitespace */
        if (name_length == 0) {
            FUNC2(stderr, "%s:%u:%u: name too short\n", list->filename, list->line_number, (unsigned)name_offset);
            break;
        }
        
        /* Alocate a record */
        fallback = FUNC0(1, sizeof(*fallback));
        
        fallback->name = FUNC1(name_length+1);
        FUNC4(fallback->name, line+name_offset, name_length+1);
        fallback->name[name_length] = '\0';
        
        /* append to end of list */
        for (r_fallback=&result; *r_fallback; r_fallback = &(*r_fallback)->next)
            ;
        fallback->next = *r_fallback;
        *r_fallback = fallback;

    }
    
    return result;
}