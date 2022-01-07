
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouping_stddev {scalar_t__ count; double m_newM; } ;
typedef double calculated_number ;



__attribute__((used)) static inline calculated_number mean(struct grouping_stddev *g) {
    return (g->count > 0) ? g->m_newM : 0.0;
}
