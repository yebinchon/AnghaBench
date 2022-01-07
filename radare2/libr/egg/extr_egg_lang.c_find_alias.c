
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nalias; TYPE_1__* aliases; } ;
struct TYPE_7__ {TYPE_2__ lang; } ;
struct TYPE_5__ {char const* content; int name; } ;
typedef TYPE_3__ REgg ;


 int is_space (char) ;
 int strcmp (char const*,int ) ;
 char const* strdup (char const*) ;

__attribute__((used)) static const char *find_alias(REgg *egg, const char *str) {

 char *p = (char *) str;
 int i;
 if (*str == '"') {
  return strdup (str);
 }

 while (*p && !is_space (*p)) {
  p++;
 }
 *p = '\x00';
 for (i = 0; i < egg->lang.nalias; i++) {
  if (!strcmp (str, egg->lang.aliases[i].name)) {
   return strdup (egg->lang.aliases[i].content);
  }
 }
 return ((void*)0);

}
