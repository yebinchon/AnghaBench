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
struct ServiceProbeMatch {int is_softmatch; struct ServiceProbeMatch* next; } ;
struct ServiceProbeFallback {struct ServiceProbeFallback* next; } ;
struct RangeList {int /*<<< orphan*/  count; int /*<<< orphan*/  member_0; } ;
struct NmapServiceProbeList {char* filename; unsigned int line_number; int count; struct NmapServiceProbe** list; int /*<<< orphan*/  exclude; } ;
struct NmapServiceProbe {struct ServiceProbeFallback* fallback; void* rarity; void* tcpwrappedms; void* totalwaitms; struct ServiceProbeMatch* match; int /*<<< orphan*/  sslports; int /*<<< orphan*/  ports; } ;
typedef  enum SvcP_RecordType { ____Placeholder_SvcP_RecordType } SvcP_RecordType ;

/* Variables and functions */
#define  SvcP_Exclude 138 
#define  SvcP_Fallback 137 
#define  SvcP_Match 136 
#define  SvcP_Ports 135 
#define  SvcP_Probe 134 
#define  SvcP_Rarity 133 
#define  SvcP_Softmatch 132 
#define  SvcP_Sslports 131 
#define  SvcP_Tcpwrappedms 130 
#define  SvcP_Totalwaitms 129 
#define  SvcP_Unknown 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,unsigned int,unsigned int,...) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 struct ServiceProbeFallback* FUNC3 (struct NmapServiceProbeList*,char const*,size_t,size_t) ; 
 struct ServiceProbeMatch* FUNC4 (struct NmapServiceProbeList*,char const*,size_t,size_t) ; 
 void* FUNC5 (struct NmapServiceProbeList*,char const*,size_t,size_t) ; 
 struct RangeList FUNC6 (struct NmapServiceProbeList*,char const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct NmapServiceProbeList*,char const*,size_t,size_t) ; 
 int FUNC8 (char const*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct RangeList*) ; 
 int /*<<< orphan*/  FUNC10 (struct RangeList*) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC11 (char const*) ; 

__attribute__((used)) static void
FUNC12(struct NmapServiceProbeList *list, const char *line)
{
    const char *filename = list->filename;
    unsigned line_number = list->line_number;
    size_t line_length;
    size_t offset;
    enum SvcP_RecordType type;
    struct RangeList ranges = {0};
    struct NmapServiceProbe *probe;
    
    
    /* trim whitespace */
    offset = 0;
    line_length = FUNC11(line);
    while (offset && FUNC2(line[offset]))
        offset++;
    while (line_length && FUNC2(line[line_length-1]))
        line_length--;
    
    /* Ignore comment lines */
    if (FUNC1(line[offset]))
        return;
    
    /* Ignore empty lines */
    if (offset >= line_length)
        return;
    
    /* parse the type field field */
    type = FUNC8(line, &offset, line_length);
    
    /* parse the remainder of the line, depending upon the type */
    switch ((int)type) {
        case SvcP_Unknown:
            FUNC0(stderr, "%s:%u:%u: unknown type: '%.*s'\n", filename, line_number, (unsigned)offset, (int)offset-0, line);
            return;
        case SvcP_Exclude:
            if (list->count) {
                /* The 'Exclude' directive is only valid at the top of the file,
                 * before any Probes */
                FUNC0(stderr, "%s:%u:%u: 'Exclude' directive only valid before any 'Probe'\n", filename, line_number, (unsigned)offset);
            } else {
                ranges = FUNC6(list, line, offset, line_length);
                if (ranges.count == 0) {
                    FUNC0(stderr, "%s:%u:%u: 'Exclude' bad format\n", filename, line_number, (unsigned)offset);
                } else {
                    FUNC9(&list->exclude, &ranges);
                    FUNC10(&ranges);
                }
            }
            return;
        case SvcP_Probe:
            /* Creates a new probe record, all the other types (except 'Exclude') operate
             * on the current probe reocrd */
            FUNC7(list, line, offset, line_length);
            return;
    }
    
    /*
     * The remaining items only work in the context of the current 'Probe'
     * directive
     */
    if (list->count == 0) {
        FUNC0(stderr, "%s:%u:%u: 'directive only valid after a 'Probe'\n", filename, line_number, (unsigned)offset);
        return;
    }
    probe = list->list[list->count-1];
    
    switch ((int)type) {
        case SvcP_Ports:
            ranges = FUNC6(list, line, offset, line_length);
            if (ranges.count == 0) {
                FUNC0(stderr, "%s:%u:%u: bad ports format\n", filename, line_number, (unsigned)offset);
            } else {
                FUNC9(&probe->ports, &ranges);
                FUNC10(&ranges);
            }
            break;
        case SvcP_Sslports:
            ranges = FUNC6(list, line, offset, line_length);
            if (ranges.count == 0) {
                FUNC0(stderr, "%s:%u:%u: bad ports format\n", filename, line_number, (unsigned)offset);
            } else {
                FUNC9(&probe->sslports, &ranges);
                FUNC10(&ranges);
            }
            break;
        case SvcP_Match:
        case SvcP_Softmatch:
            {
                struct ServiceProbeMatch *match;
            
                match = FUNC4(list, line, offset, line_length);
                if (match) {
                    struct ServiceProbeMatch **r_match;
                    
                    /* put at end of list */
                    for (r_match = &probe->match; *r_match; r_match = &(*r_match)->next)
                        ;
                    match->next = *r_match;
                    *r_match = match;
                    match->is_softmatch = (type == SvcP_Softmatch);
                }
            }
            break;
        
        case SvcP_Totalwaitms:
            probe->totalwaitms = FUNC5(list, line, offset, line_length);
            break;
        case SvcP_Tcpwrappedms:
            probe->tcpwrappedms = FUNC5(list, line, offset, line_length);
            break;
        case SvcP_Rarity:
            probe->rarity = FUNC5(list, line, offset, line_length);
            break;
        case SvcP_Fallback:
        {
            struct ServiceProbeFallback *fallback;
            fallback = FUNC3(list, line, offset, line_length);
            if (fallback) {
                fallback->next = probe->fallback;
                probe->fallback = fallback;
            }
        }
            break;
    }

}