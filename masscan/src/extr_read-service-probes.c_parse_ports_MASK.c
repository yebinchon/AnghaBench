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
struct RangeList {int /*<<< orphan*/  member_0; } ;
struct NmapServiceProbeList {char* filename; int line_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,unsigned int) ; 
 char* FUNC2 (struct RangeList*,char const*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct RangeList*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static struct RangeList
FUNC4(struct NmapServiceProbeList *list, const char *line, size_t offset, size_t line_length)
{
    /* Examples:
        Exclude 53,T:9100,U:30000-40000
        ports 21,43,110,113,199,505,540,1248,5432,30444
        ports 111,4045,32750-32810,38978
        sslports 443
     */
    unsigned is_error = 0;
    const char *p;
    struct RangeList ranges = {0};

    FUNC0(line_length);
    
    p = FUNC2(&ranges, line + offset, &is_error, 0);
    
    if (is_error) {
        FUNC1(stderr, "%s:%u:%u: bad port spec\n", list->filename, list->line_number, (unsigned)(p-line));
        FUNC3(&ranges);
    }
    
    return ranges;
}