
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frequency; } ;
typedef TYPE_1__ TrackItem ;



__attribute__((used)) static int
trackitem_compare_frequencies_desc(const void *e1, const void *e2)
{
 const TrackItem *const *t1 = (const TrackItem *const *) e1;
 const TrackItem *const *t2 = (const TrackItem *const *) e2;

 return (*t2)->frequency - (*t1)->frequency;
}
