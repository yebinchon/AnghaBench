
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWRANGEELEMENTSEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_draw_range_elements ;
 scalar_t__ glad_glDrawRangeElementsEXT ;

__attribute__((used)) static void load_GL_EXT_draw_range_elements(GLADloadproc load) {
 if(!GLAD_GL_EXT_draw_range_elements) return;
 glad_glDrawRangeElementsEXT = (PFNGLDRAWRANGEELEMENTSEXTPROC)load("glDrawRangeElementsEXT");
}
