
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_2__ {scalar_t__ code; } ;
typedef TYPE_1__ pg_local_to_utf_combined ;



__attribute__((used)) static int
compare4(const void *p1, const void *p2)
{
 uint32 v1,
    v2;

 v1 = *(const uint32 *) p1;
 v2 = ((const pg_local_to_utf_combined *) p2)->code;
 return (v1 > v2) ? 1 : ((v1 == v2) ? 0 : -1);
}
