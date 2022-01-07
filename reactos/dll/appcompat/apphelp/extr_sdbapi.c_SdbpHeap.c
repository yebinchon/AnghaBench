
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int g_Heap ;

__attribute__((used)) static HANDLE SdbpHeap(void)
{
    return g_Heap;
}
