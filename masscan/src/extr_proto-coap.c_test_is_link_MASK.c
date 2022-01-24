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
struct CoapLink {size_t link_length; int link_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *name, const unsigned char *vinput, struct CoapLink *links, size_t count, int line_number)
{
    size_t i;
    size_t name_length = FUNC2(name);
    const char *input = (const char *)vinput;
    
    for (i=0; i<count; i++) {
        const char *name2;
        if (name_length != links[i].link_length)
            continue;
        name2 = input + links[i].link_offset;
        if (FUNC1(name2, name, name_length) != 0)
            continue;
        return 1; /* found */
    }
    
    FUNC0(stderr, "[-] proto-coap failed at line number %d\n", line_number);
    return 0; /* not found */
}