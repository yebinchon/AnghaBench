
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* right; TYPE_3__* left; } ;
struct TYPE_9__ {TYPE_1__ combine; int path; int rect; } ;
struct TYPE_10__ {int type; TYPE_2__ elementdata; } ;
typedef TYPE_3__ region_element ;
typedef int GpStatus ;


 int GdipClonePath (int ,int *) ;
 int Ok ;
 int OutOfMemory ;




 int delete_element (TYPE_3__*) ;
 TYPE_3__* heap_alloc_zero (int) ;

__attribute__((used)) static inline GpStatus clone_element(const region_element* element,
        region_element** element2)
{
    GpStatus stat;


    if(!*element2){
        *element2 = heap_alloc_zero(sizeof(region_element));
        if (!*element2)
            return OutOfMemory;
    }

    (*element2)->type = element->type;

    switch (element->type)
    {
        case 128:
            (*element2)->elementdata.rect = element->elementdata.rect;
            return Ok;
        case 131:
        case 130:
            return Ok;
        case 129:
            stat = GdipClonePath(element->elementdata.path, &(*element2)->elementdata.path);
            if (stat == Ok) return Ok;
            break;
        default:
            (*element2)->elementdata.combine.left = ((void*)0);
            (*element2)->elementdata.combine.right = ((void*)0);

            stat = clone_element(element->elementdata.combine.left,
                    &(*element2)->elementdata.combine.left);
            if (stat == Ok)
            {
                stat = clone_element(element->elementdata.combine.right,
                        &(*element2)->elementdata.combine.right);
                if (stat == Ok) return Ok;
            }
            break;
    }

    delete_element(*element2);
    *element2 = ((void*)0);
    return stat;
}
