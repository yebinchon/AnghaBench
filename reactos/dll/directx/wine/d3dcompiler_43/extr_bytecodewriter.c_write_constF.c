
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytecode_buffer {int dummy; } ;
struct bwriter_shader {int num_cf; int constF; } ;
typedef int BOOL ;


 int D3DSIO_DEF ;
 int D3DSPR_CONST ;
 int write_const (int ,int ,int ,int ,struct bytecode_buffer*,int ) ;

__attribute__((used)) static void write_constF(const struct bwriter_shader *shader, struct bytecode_buffer *buffer, BOOL len) {
    write_const(shader->constF, shader->num_cf, D3DSIO_DEF, D3DSPR_CONST, buffer, len);
}
