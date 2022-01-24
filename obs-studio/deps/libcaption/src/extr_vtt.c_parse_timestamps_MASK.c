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
typedef  int /*<<< orphan*/  utf8_char_t ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 double FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,double) ; 
 int FUNC3 (int /*<<< orphan*/  const*,char*,char*,char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

void FUNC6(const utf8_char_t* line, double* start_pts, double* end_pts, char** cue_settings)
{
    char start_str[32];
    char end_str[32];
    char cue_str[1024];

    int matches = FUNC3(line, " %31s --> %31s%1023[^\n\r]", start_str, end_str, cue_str);
    *start_pts = -1;
    *cue_settings = NULL;

    FUNC2("Matches: %d\n", matches);

    if (matches >= 1) {
        *start_pts = FUNC1(start_str);
        FUNC2("Start pts: %f\n", *start_pts);
    }
    if (matches >= 2) {
        *end_pts = FUNC1(end_str);
    }
    if ((matches == 3) && (FUNC4(cue_str) > 0)) {
        int cue_size = FUNC4(cue_str);
        *cue_settings = FUNC0(cue_size + 1);
        FUNC5(*cue_settings, cue_str, cue_size);
        (*cue_settings)[cue_size] = '\0';
    }
}