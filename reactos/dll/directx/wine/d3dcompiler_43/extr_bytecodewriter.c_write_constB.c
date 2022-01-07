
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytecode_buffer {int dummy; } ;
struct bwriter_shader {int num_cb; int constB; } ;
typedef int BOOL ;


 int D3DSIO_DEFB ;
 int D3DSPR_CONSTBOOL ;
 int write_const (int ,int ,int ,int ,struct bytecode_buffer*,int ) ;

__attribute__((used)) static void write_constB(const struct bwriter_shader *shader, struct bytecode_buffer *buffer, BOOL len) {
    write_const(shader->constB, shader->num_cb, D3DSIO_DEFB, D3DSPR_CONSTBOOL, buffer, len);
}
