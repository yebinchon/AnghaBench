
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int fuzzer_do_request_from_buffer (char*,char*,size_t) ;
 char* malloc (size_t) ;
 int memcpy (char*,int const*,size_t) ;

int LLVMFuzzerTestOneInput(const uint8_t *Data, size_t Size) {
 char *s;
 if (Size > 32 * 1024) {


  return 0;
 }

 s = malloc(Size+1);
 memcpy(s, Data, Size);
 s[Size] = '\0';

 fuzzer_do_request_from_buffer("fuzzer.php", s, Size);


 return 0;
}
