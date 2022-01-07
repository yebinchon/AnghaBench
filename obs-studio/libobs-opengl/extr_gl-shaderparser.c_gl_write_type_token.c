
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_shader_parser {int dummy; } ;
struct TYPE_2__ {int len; int array; } ;
struct cf_token {TYPE_1__ str; } ;


 int gl_write_type_n (struct gl_shader_parser*,int ,int ) ;

__attribute__((used)) static inline bool gl_write_type_token(struct gl_shader_parser *glsp,
           struct cf_token *token)
{
 return gl_write_type_n(glsp, token->str.array, token->str.len);
}
