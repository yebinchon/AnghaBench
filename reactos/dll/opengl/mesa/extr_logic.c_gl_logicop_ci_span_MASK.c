#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int LogicOp; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* ReadIndexSpan ) (TYPE_3__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ;} ;
struct TYPE_9__ {TYPE_2__ Color; TYPE_1__ Driver; } ;
typedef  size_t GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int /*<<< orphan*/  GLint ;
typedef  TYPE_3__ GLcontext ;

/* Variables and functions */
#define  GL_AND 143 
#define  GL_AND_INVERTED 142 
#define  GL_AND_REVERSE 141 
#define  GL_CLEAR 140 
#define  GL_COPY 139 
#define  GL_COPY_INVERTED 138 
#define  GL_EQUIV 137 
 int /*<<< orphan*/  GL_INVALID_ENUM ; 
#define  GL_INVERT 136 
#define  GL_NAND 135 
#define  GL_NOOP 134 
#define  GL_NOR 133 
#define  GL_OR 132 
#define  GL_OR_INVERTED 131 
#define  GL_OR_REVERSE 130 
#define  GL_SET 129 
#define  GL_XOR 128 
 int MAX_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 

void FUNC2( GLcontext *ctx, GLuint n, GLint x, GLint y,
                         GLuint index[], GLubyte mask[] )
{
   GLuint dest[MAX_WIDTH];
   GLuint i;

   /* Read dest values from frame buffer */
   (*ctx->Driver.ReadIndexSpan)( ctx, n, x, y, dest );

   switch (ctx->Color.LogicOp) {
      case GL_CLEAR:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = 0;
	    }
	 }
	 break;
      case GL_SET:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = 1;
	    }
	 }
	 break;
      case GL_COPY:
	 /* do nothing */
	 break;
      case GL_COPY_INVERTED:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = ~index[i];
	    }
	 }
	 break;
      case GL_NOOP:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = dest[i];
	    }
	 }
	 break;
      case GL_INVERT:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = ~dest[i];
	    }
	 }
	 break;
      case GL_AND:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] &= dest[i];
	    }
	 }
	 break;
      case GL_NAND:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = ~(index[i] & dest[i]);
	    }
	 }
	 break;
      case GL_OR:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] |= dest[i];
	    }
	 }
	 break;
      case GL_NOR:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = ~(index[i] | dest[i]);
	    }
	 }
	 break;
      case GL_XOR:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] ^= dest[i];
	    }
	 }
	 break;
      case GL_EQUIV:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = ~(index[i] ^ dest[i]);
	    }
	 }
	 break;
      case GL_AND_REVERSE:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = index[i] & ~dest[i];
	    }
	 }
	 break;
      case GL_AND_INVERTED:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = ~index[i] & dest[i];
	    }
	 }
	 break;
      case GL_OR_REVERSE:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = index[i] | ~dest[i];
	    }
	 }
	 break;
      case GL_OR_INVERTED:
         for (i=0;i<n;i++) {
	    if (mask[i]) {
	       index[i] = ~index[i] | dest[i];
	    }
	 }
	 break;
      default:
	 FUNC0( ctx, GL_INVALID_ENUM, "gl_logic error" );
   }
}