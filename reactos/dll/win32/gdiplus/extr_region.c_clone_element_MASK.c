#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* right; TYPE_3__* left; } ;
struct TYPE_9__ {TYPE_1__ combine; int /*<<< orphan*/  path; int /*<<< orphan*/  rect; } ;
struct TYPE_10__ {int type; TYPE_2__ elementdata; } ;
typedef  TYPE_3__ region_element ;
typedef  int /*<<< orphan*/  GpStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  OutOfMemory ; 
#define  RegionDataEmptyRect 131 
#define  RegionDataInfiniteRect 130 
#define  RegionDataPath 129 
#define  RegionDataRect 128 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int) ; 

__attribute__((used)) static inline GpStatus FUNC3(const region_element* element,
        region_element** element2)
{
    GpStatus stat;

    /* root node is allocated with GpRegion */
    if(!*element2){
        *element2 = FUNC2(sizeof(region_element));
        if (!*element2)
            return OutOfMemory;
    }

    (*element2)->type = element->type;

    switch (element->type)
    {
        case RegionDataRect:
            (*element2)->elementdata.rect = element->elementdata.rect;
            return Ok;
        case RegionDataEmptyRect:
        case RegionDataInfiniteRect:
            return Ok;
        case RegionDataPath:
            stat = FUNC0(element->elementdata.path, &(*element2)->elementdata.path);
            if (stat == Ok) return Ok;
            break;
        default:
            (*element2)->elementdata.combine.left  = NULL;
            (*element2)->elementdata.combine.right = NULL;

            stat = FUNC3(element->elementdata.combine.left,
                    &(*element2)->elementdata.combine.left);
            if (stat == Ok)
            {
                stat = FUNC3(element->elementdata.combine.right,
                        &(*element2)->elementdata.combine.right);
                if (stat == Ok) return Ok;
            }
            break;
    }

    FUNC1(*element2);
    *element2 = NULL;
    return stat;
}