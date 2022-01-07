
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int R_SHA384_CTX ;


 int SHA384_DIGEST_LENGTH ;
 int SHA384_Final (int*,int*) ;
 int memset (int*,int ,int) ;
 void** sha2_hex_digits ;

char *SHA384_End(R_SHA384_CTX *context, char buffer[]) {
 ut8 digest[SHA384_DIGEST_LENGTH], *d = digest;
 int i;


 if (!context) {
  return ((void*)0);
 }

 if (buffer != (char *) 0) {
  SHA384_Final (digest, context);

  for (i = 0; i < SHA384_DIGEST_LENGTH; i++) {
   *buffer++ = sha2_hex_digits[(*d & 0xf0) >> 4];
   *buffer++ = sha2_hex_digits[*d & 0x0f];
   d++;
  }
  *buffer = (char) 0;
 } else {
  memset (context, 0, sizeof(*context));
 }
 memset (digest, 0, SHA384_DIGEST_LENGTH);
 return buffer;
}
