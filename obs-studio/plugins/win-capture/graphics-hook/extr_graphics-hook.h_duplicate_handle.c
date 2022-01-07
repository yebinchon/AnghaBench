
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,int ,int ,int *,int ,int,int ) ;
 int GetCurrentProcess () ;

__attribute__((used)) static inline bool duplicate_handle(HANDLE *dst, HANDLE src)
{
 return !!DuplicateHandle(GetCurrentProcess(), src, GetCurrentProcess(),
     dst, 0, 0, DUPLICATE_SAME_ACCESS);
}
