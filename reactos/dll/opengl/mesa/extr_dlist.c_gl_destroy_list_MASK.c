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
struct gl_image {int dummy; } ;
struct TYPE_9__ {TYPE_1__* Shared; } ;
struct TYPE_8__ {int opcode; scalar_t__ next; struct TYPE_8__* data; int /*<<< orphan*/  e; } ;
struct TYPE_7__ {int /*<<< orphan*/  DisplayList; } ;
typedef  TYPE_2__ Node ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_3__ GLcontext ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * InstSize ; 
#define  OPCODE_BITMAP 140 
#define  OPCODE_COLOR_SUB_TABLE 139 
#define  OPCODE_COLOR_TABLE 138 
#define  OPCODE_CONTINUE 137 
#define  OPCODE_DRAW_PIXELS 136 
#define  OPCODE_END_OF_LIST 135 
#define  OPCODE_MAP1 134 
#define  OPCODE_MAP2 133 
#define  OPCODE_POLYGON_STIPPLE 132 
#define  OPCODE_TEX_IMAGE1D 131 
#define  OPCODE_TEX_IMAGE2D 130 
#define  OPCODE_TEX_SUB_IMAGE1D 129 
#define  OPCODE_TEX_SUB_IMAGE2D 128 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_image*) ; 

void FUNC5( GLcontext *ctx, GLuint list )
{
   Node *n, *block;
   GLboolean done;

   block = (Node *) FUNC0(ctx->Shared->DisplayList, list);
   n = block;

   done = block ? GL_FALSE : GL_TRUE;
   while (!done) {
      switch (n[0].opcode) {
	 /* special cases first */
	 case OPCODE_MAP1:
	    FUNC3( ctx, n[1].e, (GLfloat *) n[6].data );
	    n += InstSize[n[0].opcode];
	    break;
	 case OPCODE_MAP2:
	    FUNC3( ctx, n[1].e, (GLfloat *) n[10].data );
	    n += InstSize[n[0].opcode];
	    break;
	 case OPCODE_DRAW_PIXELS:
	    FUNC2( n[5].data );
	    n += InstSize[n[0].opcode];
	    break;
	 case OPCODE_BITMAP:
	    FUNC4( (struct gl_image *) n[7].data );
	    n += InstSize[n[0].opcode];
	    break;
         case OPCODE_COLOR_TABLE:
            FUNC4( (struct gl_image *) n[3].data );
            n += InstSize[n[0].opcode];
            break;
         case OPCODE_COLOR_SUB_TABLE:
            FUNC4( (struct gl_image *) n[3].data );
            n += InstSize[n[0].opcode];
            break;
         case OPCODE_POLYGON_STIPPLE:
            FUNC2( n[1].data );
	    n += InstSize[n[0].opcode];
            break;
	 case OPCODE_TEX_IMAGE1D:
            FUNC4( (struct gl_image *) n[8].data );
            n += InstSize[n[0].opcode];
	    break;
	 case OPCODE_TEX_IMAGE2D:
            FUNC4( (struct gl_image *) n[9].data );
            n += InstSize[n[0].opcode];
	    break;
         case OPCODE_TEX_SUB_IMAGE1D:
            {
               struct gl_image *image;
               image = (struct gl_image *) n[7].data;
               FUNC4( image );
            }
            break;
         case OPCODE_TEX_SUB_IMAGE2D:
            {
               struct gl_image *image;
               image = (struct gl_image *) n[9].data;
               FUNC4( image );
            }
            break;
	 case OPCODE_CONTINUE:
	    n = (Node *) n[1].next;
	    FUNC2( block );
	    block = n;
	    break;
	 case OPCODE_END_OF_LIST:
	    FUNC2( block );
	    done = GL_TRUE;
	    break;
	 default:
	    /* Most frequent case */
	    n += InstSize[n[0].opcode];
	    break;
      }
   }

   FUNC1(ctx->Shared->DisplayList, list);
}