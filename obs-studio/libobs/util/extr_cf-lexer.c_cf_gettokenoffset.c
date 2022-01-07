
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int array; } ;
struct cf_token {TYPE_2__ unmerged_str; } ;
struct cf_preprocessor {TYPE_1__* lex; } ;
struct TYPE_3__ {int base_lexer; } ;


 int lexer_getstroffset (int *,int ,int *,int *) ;

__attribute__((used)) static inline void cf_gettokenoffset(struct cf_preprocessor *pp,
         const struct cf_token *token,
         uint32_t *row, uint32_t *col)
{
 lexer_getstroffset(&pp->lex->base_lexer, token->unmerged_str.array, row,
      col);
}
