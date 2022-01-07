
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytecode_buffer {int dummy; } ;
struct bwriter_shader {int num_inputs; int inputs; } ;
struct bc_writer {int state; } ;
typedef int HRESULT ;


 int BWRITERSPR_INPUT ;
 scalar_t__ FAILED (int ) ;
 int TRUE ;
 int find_ps_builtin_semantics (struct bc_writer*,struct bwriter_shader const*,int) ;
 int write_constB (struct bwriter_shader const*,struct bytecode_buffer*,int ) ;
 int write_constF (struct bwriter_shader const*,struct bytecode_buffer*,int ) ;
 int write_constI (struct bwriter_shader const*,struct bytecode_buffer*,int ) ;
 int write_declarations (struct bc_writer*,struct bytecode_buffer*,int ,int ,int ,int ) ;
 int write_samplers (struct bwriter_shader const*,struct bytecode_buffer*) ;

__attribute__((used)) static void ps_2_header(struct bc_writer *This, const struct bwriter_shader *shader, struct bytecode_buffer *buffer) {
    HRESULT hr = find_ps_builtin_semantics(This, shader, 8);
    if(FAILED(hr)) {
        This->state = hr;
        return;
    }

    write_declarations(This, buffer, TRUE, shader->inputs, shader->num_inputs, BWRITERSPR_INPUT);
    write_samplers(shader, buffer);
    write_constF(shader, buffer, TRUE);
    write_constB(shader, buffer, TRUE);
    write_constI(shader, buffer, TRUE);
}
