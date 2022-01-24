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
struct BannerOutput {scalar_t__ length; scalar_t__ max_length; scalar_t__ banner; } ;

/* Variables and functions */
 size_t AUTO_LEN ; 
 struct BannerOutput* FUNC0 (struct BannerOutput*,struct BannerOutput*) ; 
 struct BannerOutput* FUNC1 (struct BannerOutput*,unsigned int) ; 
 struct BannerOutput* FUNC2 (struct BannerOutput*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,void const*,size_t) ; 
 size_t FUNC4 (char const*) ; 

void
FUNC5(struct BannerOutput *banout, unsigned proto, 
              const void *px, size_t length)
{
    struct BannerOutput *p;

    if (length == AUTO_LEN)
        length = FUNC4((const char*)px);
    
    /*
     * Get the matching record for the protocol (e.g. HTML, SSL, etc.).
     * If it doesn't already exist, add the protocol object to the linked
     * list.
     */
    p = FUNC1(banout, proto);
    if (p == NULL) {
        p = FUNC2(banout, proto);
    }


    /*
     * If the current object isn't big enough, expand it
     */
    while (p->length + length >= p->max_length) {
        p = FUNC0(banout, p);
    }

    
    
    /*
     * Now that we are assured there is enough space, do the copy
     */
    FUNC3(p->banner + p->length, px, length);
    p->length = (unsigned)(p->length + length);

}