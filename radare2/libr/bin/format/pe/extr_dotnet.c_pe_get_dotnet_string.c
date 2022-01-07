
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int data_size; int const* data; } ;
typedef TYPE_1__ PE ;
typedef int DWORD ;


 scalar_t__ memmem (void*,size_t,char*,int) ;

char* pe_get_dotnet_string( PE* pe, const uint8_t* string_offset, DWORD string_index) {

 if (!(string_offset + string_index >= pe->data &&
   string_offset + string_index < pe->data + pe->data_size)) {
  return ((void*)0);
 }

 size_t remaining = (pe->data + pe->data_size) - (string_offset + string_index);


 char *start = (char*) (string_offset + string_index);
 char *eos = (char*) memmem((void*) start, remaining, "\0", 1);

 return eos? start: ((void*)0);
}
