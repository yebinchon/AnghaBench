
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_2__ {scalar_t__ utf1; scalar_t__ utf2; } ;
typedef TYPE_1__ pg_utf_to_local_combined ;



__attribute__((used)) static int
compare3(const void *p1, const void *p2)
{
 uint32 s1,
    s2,
    d1,
    d2;

 s1 = *(const uint32 *) p1;
 s2 = *((const uint32 *) p1 + 1);
 d1 = ((const pg_utf_to_local_combined *) p2)->utf1;
 d2 = ((const pg_utf_to_local_combined *) p2)->utf2;
 return (s1 > d1 || (s1 == d1 && s2 > d2)) ? 1 : ((s1 == d1 && s2 == d2) ? 0 : -1);
}
