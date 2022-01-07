
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int dummy; } ;
struct wined3d_context {int dummy; } ;


 int ERR (char*) ;

__attribute__((used)) static void shader_arb_select_compute(void *shader_priv, struct wined3d_context *context,
        const struct wined3d_state *state)
{
    ERR("Compute pipeline not supported by the ARB shader backend.\n");
}
