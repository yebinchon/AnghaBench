
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;


 int GenerationReset (int ) ;
 int free (int ) ;

__attribute__((used)) static void
GenerationDelete(MemoryContext context)
{

 GenerationReset(context);

 free(context);
}
