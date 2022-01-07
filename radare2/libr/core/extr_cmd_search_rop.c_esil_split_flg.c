
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* r_str_ndup (char*,scalar_t__) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void esil_split_flg (char *esil_str, char **esil_main, char **esil_flg) {
 char *split = strstr (esil_str, "f,=");
 const int kCommaHits = 2;
 int hits = 0;

 if (split) {
  while (hits != kCommaHits) {
   --split;
   if (*split == ',') {
    hits++;
   }
  }
  *esil_flg = strdup (++split);
  *esil_main = r_str_ndup (esil_str, strlen (esil_str) - strlen (*esil_flg) - 1);
 }
}
