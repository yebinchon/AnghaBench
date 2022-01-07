
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_api_table {int dummy; } ;


 int gl_problem (int *,char*) ;
 int printf (char*,int) ;

__attribute__((used)) static void check_pointers( struct gl_api_table *table )
{
   void **entry;
   int numentries = sizeof( struct gl_api_table ) / sizeof(void*);
   int i;

   entry = (void **) table;

   for (i=0;i<numentries;i++) {
      if (!entry[i]) {
         printf("found uninitialized function pointer at %d\n", i );
         gl_problem(((void*)0), "Missing pointer in pointers.c");

      }
   }
}
