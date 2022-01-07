
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* r_str_casestr (char const*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static bool __matchString(char *entry, char *filter, char *mask, const int mask_size) {
 char *p, *current_token = filter;
 const char *filter_end = filter + strlen (filter);


 for (p = filter; p <= filter_end; p++) {
  if (*p == ' ' || *p == '\0') {
   const char *next_match, *entry_ptr = entry;
   char old_char = *p;
   int token_len;


   if (p == current_token) {
    current_token++;
    continue;
   }
   *p = 0;
   token_len = strlen (current_token);

   while ((next_match = r_str_casestr (entry_ptr, current_token))) {
    int i;
    for (i = next_match - entry;
         (i < next_match - entry + token_len) && i < mask_size;
         i++) {
     mask[i] = 'x';
    }
    entry_ptr += token_len;
   }
   *p = old_char;
   if (entry_ptr == entry) {

    return 0;
   }
   current_token = p + 1;
  }
 }
 return 1;
}
