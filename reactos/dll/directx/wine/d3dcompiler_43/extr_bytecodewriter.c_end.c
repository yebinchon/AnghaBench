
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytecode_buffer {int dummy; } ;
struct bwriter_shader {int dummy; } ;
struct bc_writer {int dummy; } ;


 int D3DSIO_END ;
 int put_dword (struct bytecode_buffer*,int ) ;

__attribute__((used)) static void end(struct bc_writer *This, const struct bwriter_shader *shader, struct bytecode_buffer *buffer) {
    put_dword(buffer, D3DSIO_END);
}
