
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSTRINGMARKERGREMEDYPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_GREMEDY_string_marker ;
 scalar_t__ glad_glStringMarkerGREMEDY ;

__attribute__((used)) static void load_GL_GREMEDY_string_marker(GLADloadproc load) {
 if(!GLAD_GL_GREMEDY_string_marker) return;
 glad_glStringMarkerGREMEDY = (PFNGLSTRINGMARKERGREMEDYPROC)load("glStringMarkerGREMEDY");
}
