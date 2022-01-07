
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _n ;
 int bytes ;
 int free (char*) ;
 char* lines ;
 char* r_str_word_get0set (char*,int ,int ,char const*,int *) ;

__attribute__((used)) static void saveline(int n, const char *str) {
 char *out;
 if (!str) {
  return;
 }
 out = r_str_word_get0set (lines, bytes, _n, str, &bytes);
 free (lines);
 lines = out;
}
