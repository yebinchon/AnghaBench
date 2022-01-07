
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* right; TYPE_3__* left; } ;
struct TYPE_5__ {TYPE_2__ combine; int path; } ;
struct TYPE_7__ {int type; TYPE_1__ elementdata; } ;
typedef TYPE_3__ region_element ;
typedef int INT ;
typedef int GpRect ;
typedef int DWORD ;






 int write_path_data (int ,int *) ;

__attribute__((used)) static inline INT get_element_size(const region_element* element)
{
    INT needed = sizeof(DWORD);
    switch(element->type)
    {
        case 128:
            return needed + sizeof(GpRect);
        case 129:
        {
            needed += write_path_data(element->elementdata.path, ((void*)0));
            needed += sizeof(DWORD);
            return needed;
        }
        case 131:
        case 130:
            return needed;
        default:
            needed += get_element_size(element->elementdata.combine.left);
            needed += get_element_size(element->elementdata.combine.right);
            return needed;
    }

    return 0;
}
