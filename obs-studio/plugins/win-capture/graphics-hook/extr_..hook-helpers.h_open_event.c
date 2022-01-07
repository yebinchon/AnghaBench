
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int HANDLE ;


 int GC_EVENT_FLAGS ;
 int OpenEventW (int ,int,int const*) ;

__attribute__((used)) static inline HANDLE open_event(const wchar_t *name)
{
 return OpenEventW(GC_EVENT_FLAGS, 0, name);
}
