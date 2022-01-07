
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int right; } ;
struct TYPE_5__ {int range_box_y; } ;
typedef TYPE_1__ RectBox ;
typedef TYPE_2__ RangeBox ;


 int overLower2D (int *,int *) ;

__attribute__((used)) static bool
overBelow4D(RectBox *rect_box, RangeBox *query)
{
 return overLower2D(&rect_box->range_box_y, &query->right);
}
