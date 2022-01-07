
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouping_stddev {int dummy; } ;
typedef int calculated_number ;


 int sqrtl (int ) ;
 int variance (struct grouping_stddev*) ;

__attribute__((used)) static inline calculated_number stddev(struct grouping_stddev *g) {
    return sqrtl(variance(g));
}
