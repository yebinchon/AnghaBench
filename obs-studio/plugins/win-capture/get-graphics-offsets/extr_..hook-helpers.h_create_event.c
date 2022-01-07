
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int HANDLE ;


 int CreateEventW (int *,int,int,int const*) ;

__attribute__((used)) static inline HANDLE create_event(const wchar_t *name)
{
 return CreateEventW(((void*)0), 0, 0, name);
}
