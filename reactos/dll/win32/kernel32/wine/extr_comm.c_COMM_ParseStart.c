
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPCWSTR ;


 int strncmpiW (char*,char const*,int) ;

__attribute__((used)) static LPCWSTR COMM_ParseStart(LPCWSTR ptr)
{
 static const WCHAR comW[] = {'C','O','M',0};



 if(!strncmpiW(ptr, comW, 3))
 {
  ptr += 3;



  if(*ptr < '1' || *ptr > '9')
   return ((void*)0);


  while(*ptr >= '0' && *ptr <= '9') ptr++;


  if(*ptr != ':' && *ptr != ' ')
   return ((void*)0);


  while(*ptr == ' ') ptr++;
  if(*ptr == ':')
  {
   ptr++;
   while(*ptr == ' ') ptr++;
  }
 }

 else if(*ptr == ' ')
  return ((void*)0);

 return ptr;
}
