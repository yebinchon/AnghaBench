
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXPAGECOMMITMENTARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_sparse_texture ;
 scalar_t__ glad_glTexPageCommitmentARB ;

__attribute__((used)) static void load_GL_ARB_sparse_texture(GLADloadproc load) {
 if(!GLAD_GL_ARB_sparse_texture) return;
 glad_glTexPageCommitmentARB = (PFNGLTEXPAGECOMMITMENTARBPROC)load("glTexPageCommitmentARB");
}
