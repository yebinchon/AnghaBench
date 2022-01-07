
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {struct string_list* next; int str; } ;
typedef int WCHAR ;
typedef scalar_t__* LPWSTR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int lstrcpynW (scalar_t__*,int ,int) ;
 int lstrlenW (int ) ;

__attribute__((used)) static LPWSTR build_transforms(struct string_list *transform_list)
{
 struct string_list *list;
 LPWSTR ret, p;
 DWORD len;


 len = 1;
 for(list = transform_list; list; list = list->next)
  len += lstrlenW(list->str) + 1;

 ret = HeapAlloc( GetProcessHeap(), 0, len*sizeof(WCHAR) );


 p = ret;
 for(list = transform_list; list; list = list->next)
 {
  len = lstrlenW(list->str);
  lstrcpynW(p, list->str, len );
  p += len;
  if(list->next)
   *p++ = ';';
 }
 *p = 0;

 return ret;
}
