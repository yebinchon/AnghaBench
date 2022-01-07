
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int wcscoll (int * const,int * const) ;

__attribute__((used)) static int compare_wcscoll(const void *v1, const void *v2)
{
    wchar_t * const* p1 = v1;
    wchar_t * const* p2 = v2;
    return wcscoll(*p1, *p2);
}
