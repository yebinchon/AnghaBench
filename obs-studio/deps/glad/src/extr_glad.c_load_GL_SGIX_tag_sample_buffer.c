
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTAGSAMPLEBUFFERSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIX_tag_sample_buffer ;
 scalar_t__ glad_glTagSampleBufferSGIX ;

__attribute__((used)) static void load_GL_SGIX_tag_sample_buffer(GLADloadproc load) {
 if(!GLAD_GL_SGIX_tag_sample_buffer) return;
 glad_glTagSampleBufferSGIX = (PFNGLTAGSAMPLEBUFFERSGIXPROC)load("glTagSampleBufferSGIX");
}
