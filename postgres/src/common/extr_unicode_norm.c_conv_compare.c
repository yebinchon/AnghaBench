
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_2__ {scalar_t__ codepoint; } ;
typedef TYPE_1__ pg_unicode_decomposition ;



__attribute__((used)) static int
conv_compare(const void *p1, const void *p2)
{
 uint32 v1,
    v2;

 v1 = *(const uint32 *) p1;
 v2 = ((const pg_unicode_decomposition *) p2)->codepoint;
 return (v1 > v2) ? 1 : ((v1 == v2) ? 0 : -1);
}
