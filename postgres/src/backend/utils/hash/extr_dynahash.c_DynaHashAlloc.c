
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int Assert (int ) ;
 int CurrentDynaHashCxt ;
 void* MemoryContextAlloc (int ,int ) ;
 int MemoryContextIsValid (int ) ;

__attribute__((used)) static void *
DynaHashAlloc(Size size)
{
 Assert(MemoryContextIsValid(CurrentDynaHashCxt));
 return MemoryContextAlloc(CurrentDynaHashCxt, size);
}
