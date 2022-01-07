
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytecode_buffer {int alloc_size; int state; void* data; } ;
typedef int DWORD ;


 int BYTECODEBUFFER_INITIAL_SIZE ;
 int S_OK ;
 void* d3dcompiler_alloc (int) ;
 int d3dcompiler_free (struct bytecode_buffer*) ;

__attribute__((used)) static struct bytecode_buffer *allocate_buffer(void) {
    struct bytecode_buffer *ret;

    ret = d3dcompiler_alloc(sizeof(*ret));
    if(!ret) return ((void*)0);

    ret->alloc_size = BYTECODEBUFFER_INITIAL_SIZE;
    ret->data = d3dcompiler_alloc(sizeof(DWORD) * ret->alloc_size);
    if(!ret->data) {
        d3dcompiler_free(ret);
        return ((void*)0);
    }
    ret->state = S_OK;
    return ret;
}
