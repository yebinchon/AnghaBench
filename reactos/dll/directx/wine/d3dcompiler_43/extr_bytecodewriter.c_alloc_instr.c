
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instruction {unsigned int num_srcs; void* src; } ;


 int ERR (char*) ;
 void* d3dcompiler_alloc (unsigned int) ;
 int d3dcompiler_free (struct instruction*) ;

struct instruction *alloc_instr(unsigned int srcs) {
    struct instruction *ret = d3dcompiler_alloc(sizeof(*ret));
    if(!ret) {
        ERR("Failed to allocate memory for an instruction structure\n");
        return ((void*)0);
    }

    if(srcs) {
        ret->src = d3dcompiler_alloc(srcs * sizeof(*ret->src));
        if(!ret->src) {
            ERR("Failed to allocate memory for instruction registers\n");
            d3dcompiler_free(ret);
            return ((void*)0);
        }
        ret->num_srcs = srcs;
    }
    return ret;
}
