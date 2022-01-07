
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouping_stddev {int count; int m_newS; } ;
typedef int calculated_number ;



__attribute__((used)) static inline calculated_number variance(struct grouping_stddev *g) {
    return ( (g->count > 1) ? g->m_newS/(g->count - 1) : 0.0 );
}
