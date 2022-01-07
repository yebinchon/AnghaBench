
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int lexeme_compare (void const*,void const*) ;

__attribute__((used)) static int
lexeme_match(const void *key1, const void *key2, Size keysize)
{

 return lexeme_compare(key1, key2);
}
