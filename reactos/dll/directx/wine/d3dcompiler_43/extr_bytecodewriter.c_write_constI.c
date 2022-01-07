
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytecode_buffer {int dummy; } ;
struct bwriter_shader {int num_ci; int constI; } ;
typedef int BOOL ;


 int D3DSIO_DEFI ;
 int D3DSPR_CONSTINT ;
 int write_const (int ,int ,int ,int ,struct bytecode_buffer*,int ) ;

__attribute__((used)) static void write_constI(const struct bwriter_shader *shader, struct bytecode_buffer *buffer, BOOL len) {
    write_const(shader->constI, shader->num_ci, D3DSIO_DEFI, D3DSPR_CONSTINT, buffer, len);
}
