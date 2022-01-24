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
struct gl_shared_state {void* Default2D; void* Default1D; void* TexObjects; void* DisplayList; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 () ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_shared_state*) ; 
 void* FUNC4 (struct gl_shared_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gl_shared_state*,void*) ; 

__attribute__((used)) static struct gl_shared_state *FUNC6( void )
{
   struct gl_shared_state *ss;

   ss = (struct gl_shared_state*) FUNC2( 1, sizeof(struct gl_shared_state) );
   if (!ss)
      return NULL;

   ss->DisplayList = FUNC1();

   ss->TexObjects = FUNC1();

   /* Default Texture objects */
   ss->Default1D = FUNC4(ss, 0, 1);
   ss->Default2D = FUNC4(ss, 0, 2);

   if (!ss->DisplayList || !ss->TexObjects
       || !ss->Default1D || !ss->Default2D) {
      /* Ran out of memory at some point.  Free everything and return NULL */
      if (!ss->DisplayList)
         FUNC0(ss->DisplayList);
      if (!ss->TexObjects)
         FUNC0(ss->TexObjects);
      if (!ss->Default1D)
         FUNC5(ss, ss->Default1D);
      if (!ss->Default2D)
         FUNC5(ss, ss->Default2D);
      FUNC3(ss);
      return NULL;
   }
   else {
      return ss;
   }
}