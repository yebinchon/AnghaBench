
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_video {int dummy; } ;


 int GLSLF (char*,char,double) ;

__attribute__((used)) static void skip_unused(struct gl_video *p, int num_components)
{
    for (int i = num_components; i < 4; i++)
        GLSLF("color.%c = %f;\n", "rgba"[i], i < 3 ? 0.0 : 1.0);
}
