
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_compute_variable_group_size ;
 scalar_t__ glad_glDispatchComputeGroupSizeARB ;

__attribute__((used)) static void load_GL_ARB_compute_variable_group_size(GLADloadproc load) {
 if(!GLAD_GL_ARB_compute_variable_group_size) return;
 glad_glDispatchComputeGroupSizeARB = (PFNGLDISPATCHCOMPUTEGROUPSIZEARBPROC)load("glDispatchComputeGroupSizeARB");
}
