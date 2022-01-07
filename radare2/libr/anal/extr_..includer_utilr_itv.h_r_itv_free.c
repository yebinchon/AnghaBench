
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RInterval ;


 int free (int *) ;

__attribute__((used)) static inline void r_itv_free(RInterval *itv) {
 free (itv);
}
