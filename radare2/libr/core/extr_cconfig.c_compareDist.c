
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* diff; } ;
struct TYPE_5__ {scalar_t__ dist; } ;
typedef TYPE_2__ RAnalFunction ;



__attribute__((used)) static int compareDist(const RAnalFunction *a, const RAnalFunction *b) {
 return a && b && a->diff->dist && b->diff->dist && a->diff->dist > b->diff->dist;
}
