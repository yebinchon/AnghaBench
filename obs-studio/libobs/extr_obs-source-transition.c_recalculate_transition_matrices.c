
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_source_t ;


 int recalculate_transition_matrix (int *,int) ;

__attribute__((used)) static inline void recalculate_transition_matrices(obs_source_t *transition)
{
 recalculate_transition_matrix(transition, 0);
 recalculate_transition_matrix(transition, 1);
}
