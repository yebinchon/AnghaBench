
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TheLexeme ;


 int cmpLexeme (int const*,int const*) ;

__attribute__((used)) static int
cmpLexemeQ(const void *a, const void *b)
{
 return cmpLexeme((const TheLexeme *) a, (const TheLexeme *) b);
}
