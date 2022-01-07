
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_state {int parameter; } ;


 int FALSE ;
 int free_parameter (int *,int ,int ) ;

__attribute__((used)) static void free_state(struct d3dx_state *state)
{
    free_parameter(&state->parameter, FALSE, FALSE);
}
