
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {size_t len; int array; } ;
struct cf_lexer {scalar_t__* write_offset; } ;


 int strncpy (scalar_t__*,int ,size_t) ;

__attribute__((used)) static inline void cf_lexer_write_strref(struct cf_lexer *lex,
      const struct strref *ref)
{
 strncpy(lex->write_offset, ref->array, ref->len);
 lex->write_offset[ref->len] = 0;
 lex->write_offset += ref->len;
}
