
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwriter_shader {int dummy; } ;
typedef enum shader_type { ____Placeholder_shader_type } shader_type ;
typedef int YY_BUFFER_STATE ;
typedef int DWORD ;


 int hlsl__delete_buffer (int ) ;
 int hlsl__scan_string (char const*) ;
 int hlsl__switch_to_buffer (int ) ;
 struct bwriter_shader* parse_hlsl (int,int ,int ,char const*,char**) ;

struct bwriter_shader *parse_hlsl_shader(const char *text, enum shader_type type, DWORD major, DWORD minor,
        const char *entrypoint, char **messages)
{
    struct bwriter_shader *ret = ((void*)0);
    YY_BUFFER_STATE buffer;

    buffer = hlsl__scan_string(text);
    hlsl__switch_to_buffer(buffer);

    ret = parse_hlsl(type, major, minor, entrypoint, messages);

    hlsl__delete_buffer(buffer);
    return ret;
}
