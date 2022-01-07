
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,int) ;
 int de_bruijn_seq (int,int,int,int,int,int*,char*,char const*) ;
 int free (int*) ;
 int strlen (char const*) ;

__attribute__((used)) static char* de_bruijn(const char* charset, int order, int maxlen) {
 if (!charset) {
  return ((void*)0);
 }
 int size = strlen (charset);
 int* prenecklace_a = calloc (size * order, sizeof (int));
 if (!prenecklace_a) {
  return ((void*)0);
 }
 char* sequence = calloc (maxlen + 1, sizeof (char));
 if (!sequence) {
  free (prenecklace_a);
  return ((void*)0);
 }
 de_bruijn_seq (1, 1, order, maxlen, size, prenecklace_a, sequence, charset);
 free (prenecklace_a);
 return sequence;
}
