
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _defines {char* olddef; char* newdef; int pertinent; struct _defines* next; int * used; } ;


 struct _defines* defines ;
 struct _defines* mm_alloc (int) ;
 void* mm_strdup (char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
add_preprocessor_define(char *define)
{
 struct _defines *pd = defines;
 char *ptr,
      *define_copy = mm_strdup(define);

 defines = mm_alloc(sizeof(struct _defines));


 ptr = strchr(define_copy, '=');
 if (ptr != ((void*)0))
 {
  char *tmp;


  for (tmp = ptr - 1; *tmp == ' '; tmp--);
  tmp[1] = '\0';
  defines->olddef = define_copy;
  defines->newdef = ptr + 1;
 }
 else
 {
  defines->olddef = define_copy;
  defines->newdef = mm_strdup("1");
 }
 defines->pertinent = 1;
 defines->used = ((void*)0);
 defines->next = pd;
}
