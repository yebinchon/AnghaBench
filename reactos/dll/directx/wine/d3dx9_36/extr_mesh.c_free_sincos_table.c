
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sincos_table {int sin; int cos; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;

__attribute__((used)) static void free_sincos_table(struct sincos_table *sincos_table)
{
    HeapFree(GetProcessHeap(), 0, sincos_table->cos);
    HeapFree(GetProcessHeap(), 0, sincos_table->sin);
}
