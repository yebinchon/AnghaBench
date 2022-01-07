
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_glsl_priv {int ffp_proj_control; } ;
typedef int BOOL ;



__attribute__((used)) static BOOL shader_glsl_has_ffp_proj_control(void *shader_priv)
{
    struct shader_glsl_priv *priv = shader_priv;

    return priv->ffp_proj_control;
}
