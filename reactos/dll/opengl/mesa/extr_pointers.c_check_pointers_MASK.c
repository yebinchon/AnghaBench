#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gl_api_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2( struct gl_api_table *table )
{
   void **entry;
   int numentries = sizeof( struct gl_api_table ) / sizeof(void*);
   int i;

   entry = (void **) table;

   for (i=0;i<numentries;i++) {
      if (!entry[i]) {
         FUNC1("found uninitialized function pointer at %d\n", i );
         FUNC0(NULL, "Missing pointer in pointers.c");
         /*abort()*/
      }
   }
}