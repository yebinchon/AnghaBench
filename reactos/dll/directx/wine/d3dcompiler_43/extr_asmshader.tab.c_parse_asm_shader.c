
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bwriter_shader {int dummy; } ;
struct TYPE_3__ {int string; scalar_t__ capacity; scalar_t__ size; } ;
struct TYPE_4__ {scalar_t__ status; int line_no; TYPE_1__ messages; struct bwriter_shader* shader; } ;


 int ERR (char*) ;
 scalar_t__ PARSE_ERR ;
 scalar_t__ PARSE_SUCCESS ;
 int SlDeleteShader (struct bwriter_shader*) ;
 TYPE_2__ asm_ctx ;
 int asmshader_parse () ;
 int d3dcompiler_free (int ) ;
 char* d3dcompiler_realloc (int ,scalar_t__) ;

struct bwriter_shader *parse_asm_shader(char **messages)
{
    struct bwriter_shader *ret = ((void*)0);

    asm_ctx.shader = ((void*)0);
    asm_ctx.status = PARSE_SUCCESS;
    asm_ctx.messages.size = asm_ctx.messages.capacity = 0;
    asm_ctx.line_no = 1;

    asmshader_parse();

    if (asm_ctx.status != PARSE_ERR)
        ret = asm_ctx.shader;
    else if (asm_ctx.shader)
        SlDeleteShader(asm_ctx.shader);

    if (messages)
    {
        if (asm_ctx.messages.size)
        {

            *messages = d3dcompiler_realloc(asm_ctx.messages.string, asm_ctx.messages.size + 1);
            if (!*messages)
            {
                ERR("Out of memory, no messages reported\n");
                d3dcompiler_free(asm_ctx.messages.string);
            }
        }
        else
        {
            *messages = ((void*)0);
        }
    }
    else
    {
        if (asm_ctx.messages.capacity)
            d3dcompiler_free(asm_ctx.messages.string);
    }

    return ret;
}
