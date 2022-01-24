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
struct BannerOutput {int dummy; } ;

/* Variables and functions */
 unsigned char* FUNC0 (struct BannerOutput const*,unsigned int) ; 
 size_t FUNC1 (struct BannerOutput const*,unsigned int) ; 
 scalar_t__ FUNC2 (char const*,unsigned char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

unsigned
FUNC4(const struct BannerOutput *banout, unsigned proto,
                const char *string)
{
    const unsigned char *string2;
    size_t string_length;
    size_t string2_length;
    size_t i;

    /*
     * Grab the string
     */
    string2 = FUNC0(banout, proto);
    if (string2 == NULL)
        return string == NULL;

    if (string == NULL)
        return 0;
    
    string_length = FUNC3(string);
    string2_length = FUNC1(banout, proto);

    if (string_length > string2_length)
        return 0;
    
    for (i=0; i<string2_length-string_length+1; i++) {
        if (FUNC2(string, string2+i, string_length) == 0)
            return 1;
    }
    return 0;
}