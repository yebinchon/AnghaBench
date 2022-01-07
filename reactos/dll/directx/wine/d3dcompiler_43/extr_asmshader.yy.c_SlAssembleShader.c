
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwriter_shader {int dummy; } ;
typedef int YY_BUFFER_STATE ;


 int TRACE (char*,char const*,char**) ;
 int asmshader__delete_buffer (int ) ;
 int asmshader__scan_string (char const*) ;
 int asmshader__switch_to_buffer (int ) ;
 struct bwriter_shader* parse_asm_shader (char**) ;

struct bwriter_shader *SlAssembleShader(const char *text, char **messages) {
    struct bwriter_shader *ret = ((void*)0);
    YY_BUFFER_STATE buffer;
    TRACE("%p, %p\n", text, messages);

    buffer = asmshader__scan_string(text);
    asmshader__switch_to_buffer(buffer);

    ret = parse_asm_shader(messages);

    asmshader__delete_buffer(buffer);

    return ret;
}
