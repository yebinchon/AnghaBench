
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytecode_buffer {int alloc_size; int size; int * data; int state; } ;
typedef int DWORD ;


 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int * d3dcompiler_realloc (int *,int) ;

__attribute__((used)) static void put_dword(struct bytecode_buffer *buffer, DWORD value) {
    if(FAILED(buffer->state)) return;

    if(buffer->alloc_size == buffer->size) {
        DWORD *newarray;
        buffer->alloc_size *= 2;
        newarray = d3dcompiler_realloc(buffer->data,
                               sizeof(DWORD) * buffer->alloc_size);
        if(!newarray) {
            ERR("Failed to grow the buffer data memory\n");
            buffer->state = E_OUTOFMEMORY;
            return;
        }
        buffer->data = newarray;
    }
    buffer->data[buffer->size++] = value;
}
