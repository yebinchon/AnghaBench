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
struct NmapServiceProbeList {char const* filename; } ;

/* Variables and functions */
 struct NmapServiceProbeList* FUNC0 (int,int) ; 

__attribute__((used)) static struct NmapServiceProbeList *
FUNC1(const char *filename)
{
    struct NmapServiceProbeList *result;
    
    result = FUNC0(1, sizeof(*result));
    result->filename = filename;

    return result;
}