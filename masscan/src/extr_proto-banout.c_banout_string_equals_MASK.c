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
 unsigned char* FUNC0 (struct BannerOutput*,unsigned int) ; 
 size_t FUNC1 (struct BannerOutput*,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned char const*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4(struct BannerOutput *banout, unsigned proto,
                     const char *rhs)
{
    const unsigned char *lhs = FUNC0(banout, proto);
    size_t lhs_length = FUNC1(banout, proto);
    size_t rhs_length = FUNC3(rhs);
    
    if (lhs_length != rhs_length)
        return 0;
    return FUNC2(lhs, rhs, rhs_length) == 0;
}