
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; } ;
typedef TYPE_1__ TrackItem ;


 int element_compare (int *,int *) ;

__attribute__((used)) static int
trackitem_compare_element(const void *e1, const void *e2)
{
 const TrackItem *const *t1 = (const TrackItem *const *) e1;
 const TrackItem *const *t2 = (const TrackItem *const *) e2;

 return element_compare(&(*t1)->key, &(*t2)->key);
}
