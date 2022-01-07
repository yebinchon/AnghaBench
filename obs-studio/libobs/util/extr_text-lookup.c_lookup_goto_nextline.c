
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {char* array; } ;
struct lexer {int dummy; } ;


 int lookup_gettoken (struct lexer*,struct strref*) ;
 int strref_clear (struct strref*) ;

__attribute__((used)) static inline bool lookup_goto_nextline(struct lexer *p)
{
 struct strref val;
 bool success = 1;

 strref_clear(&val);

 while (1) {
  if (!lookup_gettoken(p, &val)) {
   success = 0;
   break;
  }
  if (*val.array == '\n')
   break;
 }

 return success;
}
