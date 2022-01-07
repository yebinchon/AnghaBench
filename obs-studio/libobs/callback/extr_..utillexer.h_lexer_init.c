
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int memset (struct lexer*,int ,int) ;

__attribute__((used)) static inline void lexer_init(struct lexer *lex)
{
 memset(lex, 0, sizeof(struct lexer));
}
