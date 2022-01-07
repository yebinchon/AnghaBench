
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouping_des {double beta; double beta_other; } ;
typedef int RRDR ;


 double window (int *,struct grouping_des*) ;

__attribute__((used)) static inline void set_beta(RRDR *r, struct grouping_des *g) {



    g->beta = 2.0 / (window(r, g) + 1.0);
    g->beta_other = 1.0 - g->beta;


}
