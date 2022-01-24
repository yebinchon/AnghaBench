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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void
FUNC3(FILE *fp, const char *string, size_t length, int delimiter)
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
        
        switch (c) {
            case '\\':
                FUNC1(fp, "\\\\");
                break;
            case '\0':
                FUNC1(fp, "\\0");
                break;
            case '\a':
                FUNC1(fp, "\\a");
                break;
            case '\b':
                FUNC1(fp, "\\b");
                break;
            case '\f':
                FUNC1(fp, "\\f");
                break;
            case '\n':
                FUNC1(fp, "\\n");
                break;
            case '\r':
                FUNC1(fp, "\\r");
                break;
            case '\t':
                FUNC1(fp, "\\t");
                break;
            case '\v':
                FUNC1(fp, "\\v");
                break;
            default:
                if (FUNC2(c))
                    FUNC1(fp, "%c", c);
                else
                    FUNC1(fp, "\\x%02x", ((unsigned)c)&0xFF);
                break;
                
        }
    }
    
    /* print end delimiter */
    FUNC1(fp, "%c", delimiter);
    
}