
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nb_errors; } ;


 TYPE_1__* tcc_state ;

__attribute__((used)) static inline int tcc_nerr() {
 return tcc_state->nb_errors;
}
