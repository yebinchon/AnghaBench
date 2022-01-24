#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* full_map; int /*<<< orphan*/  full_count; int /*<<< orphan*/  hMap; } ;
struct TYPE_4__ {TYPE_1__ pe; } ;
struct image_file_map {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  IMAGE_NT_HEADERS ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_MAP_READ ; 
 void* IMAGE_NO_MAP ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (void*) ; 

__attribute__((used)) static void* FUNC2(struct image_file_map* fmap, IMAGE_NT_HEADERS** nth)
{
    if (!fmap->u.pe.full_map)
    {
        fmap->u.pe.full_map = FUNC0(fmap->u.pe.hMap, FILE_MAP_READ, 0, 0, 0);
    }
    if (fmap->u.pe.full_map)
    {
        if (nth) *nth = FUNC1(fmap->u.pe.full_map);
        fmap->u.pe.full_count++;
        return fmap->u.pe.full_map;
    }
    return IMAGE_NO_MAP;
}