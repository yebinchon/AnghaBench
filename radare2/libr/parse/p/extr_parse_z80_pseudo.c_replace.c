
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
  { "adc", "1 = 1 + 2"},
  { "add", "1 = 1 + 2"},
  { "and", "1 = 1 & 2"},
  { "cpl", "1 = ~1"},
  { "ex", "swap(1, 2)"},
  { "in", "1 = [2]"},
  { "jp", "goto [1]"},
  { "jp", "goto 1"},
  { "jr", "goto +1"},
  { "ld", "1 = 2"},
  { "ldd", "1 = 2--"},
  { "neg", "1 = -1"},
  { "nop", ""},
  { "or", "1 = 1 | 2"},
  { "pop", "pop 1"},
  { "push", "push 1"},
  { "rr", "1 = 1 << 2"},
  { "sbc", "1 = 1 - 2"},
  { "sla", "1 = 1 << 2"},
  { "sra", "1 = 1 >> 2"},
  { "srl", "1 = 1 >> 2"},
  { "sub", "1 = 1 - 2"},
  { "xor", "1 = 1 ^ 2"},
  { ((void*)0) }
 };

 for (i=0; ops[i].op != ((void*)0); i++) {
  if (!strcmp (ops[i].op, argv[0])) {
   if (newstr != ((void*)0)) {
    for (j=k=0;ops[i].str[j]!='\0';j++,k++) {
     if (ops[i].str[j]>='1' && ops[i].str[j]<='9') {
      const char *w = argv[ ops[i].str[j]-'0' ];
      if (w != ((void*)0)) {
       strcpy (newstr+k, w);
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
   strcat (newstr, (i == 0 || i== argc - 1)?" ":", ");
  }
 }

 return 0;
}
