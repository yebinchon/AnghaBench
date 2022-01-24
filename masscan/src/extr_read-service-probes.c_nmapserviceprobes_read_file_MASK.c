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
struct NmapServiceProbeList {unsigned int line_number; scalar_t__ filename; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 struct NmapServiceProbeList* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct NmapServiceProbeList*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct NmapServiceProbeList*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  stdout ; 

struct NmapServiceProbeList *
FUNC7(const char *filename)
{
    FILE *fp;
    char line[32768];
    struct NmapServiceProbeList *result;
    
    /*
     * Open the file
     */
    fp = FUNC2(filename, "rt");
    if (fp == NULL) {
        FUNC6(filename);
        return 0;
    }

    /*
     * Create the result structure
     */
    result = FUNC3(filename);
    
    /*
     * parse all lines in the text file
     */
    while (FUNC1(line, sizeof(line), fp)) {

        /* Track line number for error messages */
        result->line_number++;

        /* Parse this string into a record */
        FUNC5(result, line);
    }
    
    FUNC0(fp);
    result->filename = 0; /* name no longer valid after this point */
    result->line_number = (unsigned)~0; /* line number no longer valid after this point */
    
    FUNC4(result, stdout);
    
    return result;
}