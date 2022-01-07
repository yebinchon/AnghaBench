
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char const*) ;
 int strcmp (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int replace(int argc, const char *argv[], char *newstr) {
 int i,j,k;
 struct {
  char *op;
  char *str;
 } ops[] = {
  { "cmpl", "cmp 2, 1"},
  { "testl", "test 2, 1"},
  { "leal", "lea 2, 1"},
  { "movl", "mov 2, 1"},
  { "xorl", "xor 2, 1"},
  { "andl", "and 2, 1"},
  { "orl", "or 2, 1"},
  { "addl", "add 2, 1"},
  { "incl", "inc 1"},
  { "decl", "dec 1"},
  { "subl", "sub 2, 1"},
  { "mull", "mul 2, 1"},
  { "divl", "div 2, 1"},
  { "pushl", "push 1"},
  { "popl", "pop 1"},
  { "ret", "ret"},
  { ((void*)0) }
 };

 for (i=0; ops[i].op != ((void*)0); i++) {
  if (!strcmp (ops[i].op, argv[0])) {
   if (newstr != ((void*)0)) {
    for (j=k=0;ops[i].str[j]!='\0';j++,k++) {
     if (ops[i].str[j]>='0' && ops[i].str[j]<='9') {
      const char *w = argv[ ops[i].str[j]-'0' ];
      if (w != ((void*)0)) {
       strcpy(newstr+k, w);
       k += strlen(w)-1;
      }
     } else {
      newstr[k] = ops[i].str[j];
     }
    }
    newstr[k]='\0';
   }
   return 1;
  }
 }


 if (newstr != ((void*)0)) {
  newstr[0] = '\0';
  for (i=0; i<argc; i++) {
   strcat (newstr, argv[i]);
   strcat (newstr, (i == 0 || i== argc - 1)?" ":",");
  }
 }

 return 0;
}
