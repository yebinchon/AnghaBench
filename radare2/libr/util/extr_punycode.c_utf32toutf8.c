
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int* calloc (int,int) ;
 int eprintf (char*) ;
 int free (int*) ;
 int utf32len (int*) ;

ut8 *utf32toutf8 (ut32 *input) {
 if (!input) {
  eprintf ("ERROR input is null\n");
  return ((void*)0);
 }

 int i = 0;
 int j = 0;
 int len = utf32len (input);
 ut8 *result = calloc (4, len + 1);
 if (!result) {
  eprintf ("ERROR: out of memory\n");
  return ((void*)0);
 }

 for (i = 0; i < len; i++) {
  if (input[i] < 0x80) {
   result[j] = input[i];
   j++;
  } else if (input[i] < 0x800) {
   result[j + 1] = 0x80 | (input[i] & 0x3f);
   result[j] = 0xc0 | ((input[i] >> 6) & 0x1f);
   j += 2;
  } else if (input[i] < 0x10000) {
   result[j + 2] = 0x80 | (input[i] & 0x3f);
   result[j + 1] = 0x80 | ((input[i] >> 6) & 0x3f);
   result[j] = 0xe0 | ((input[i] >> 12) & 0xf);
   j += 3;
  } else if (input[i] < 0x200000) {
   result[j + 3] = 0x80 | (input[i] & 0x3f);
   result[j + 2] = 0x80 | ((input[i] >> 6) & 0x3f);
   result[j + 1] = 0x80 | ((input[i] >> 12) & 0x3f);
   result[j] = 0xf0 | ((input[i] >> 18) & 0x7);
   j += 4;
  } else {
   eprintf ("ERROR in toutf8. Seems like input is invalid\n");
   free (result);
   return ((void*)0);
  }
 }

 result[j] = 0;
 return result;
}
