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
struct find_entry {int matchlen; int size; } ;
typedef  int off_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(const void *pa, const void *pb)
{
    const struct find_entry *a = pa, *b = pb;
    // check "similar" filenames first
    int matchdiff = b->matchlen - a->matchlen;
    if (matchdiff)
        return FUNC0(matchdiff);
    // check small files first
    off_t sizediff = a->size - b->size;
    if (sizediff)
        return FUNC0(sizediff);
    return 0;
}