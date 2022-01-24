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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void
FUNC2(FILE *fp, const char *string, size_t length, int delimiter)
{
    size_t i;
    
    /* If the string contains the preferred delimiter, then choose a different
     * delimiter */
    if (FUNC0(string, length, delimiter)) {
        static const char *delimiters = "|/\"'#*+-!@$%^&()_=";
        
        for (i=0; delimiters[i]; i++) {
            delimiter = delimiters[i];
            if (!FUNC0(string, length, delimiter))
                break;
        }
    }
    
    /* print start delimiter */
    FUNC1(fp, "%c", delimiter);
    
    /* print the string */
    for (i=0; i<length; i++) {
        char c = string[i];
        FUNC1(fp, "%c", c);
    }
    
    /* print end delimiter */
    FUNC1(fp, "%c", delimiter);
    
}