
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char* StrDup(const char* str)
{
    char* dst;
    dst=HeapAlloc(GetProcessHeap(),0,strlen(str)+1);
    strcpy(dst, str);
    return dst;
}
