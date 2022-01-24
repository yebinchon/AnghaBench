#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct gl_image {int RefCount; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* ColorTable ) (TYPE_3__*,void*,void*,struct gl_image*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int /*<<< orphan*/ * data; void* e; } ;
typedef  TYPE_2__ Node ;
typedef  int /*<<< orphan*/  GLvoid ;
typedef  void* GLenum ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
 int /*<<< orphan*/  OPCODE_COLOR_TABLE ; 
 TYPE_2__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,void*,void*,struct gl_image*) ; 

void FUNC2( GLcontext *ctx, GLenum target, GLenum internalFormat,
                         struct gl_image *table )
{
   Node *n = FUNC0( ctx, OPCODE_COLOR_TABLE, 3 );
   if (n) {
      n[1].e = target;
      n[2].e = internalFormat;
      n[3].data = (GLvoid *) table;
      if (table) {
         /* must retain this image */
         table->RefCount = 1;
      }
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.ColorTable)( ctx, target, internalFormat, table );
   }
}