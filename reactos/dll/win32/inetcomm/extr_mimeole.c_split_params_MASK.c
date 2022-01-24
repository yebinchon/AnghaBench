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
typedef  int /*<<< orphan*/  header_t ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC1(header_t *header, char *value)
{
    char *cp = value, *start = value;
    BOOL in_quotes = FALSE, done_value = FALSE;

    while(*cp)
    {
        if(!in_quotes && *cp == ';')
        {
            *cp = '\0';
            if(done_value) FUNC0(header, start);
            done_value = TRUE;
            start = cp + 1;
        }
        else if(*cp == '"')
            in_quotes = !in_quotes;
        cp++;
    }
    if(done_value) FUNC0(header, start);
}