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
struct gl_light {double SpotExponent; double SpotCutoff; double CosCutoff; double ConstantAttenuation; double LinearAttenuation; double QuadraticAttenuation; int /*<<< orphan*/  Enabled; int /*<<< orphan*/  Direction; int /*<<< orphan*/  Position; int /*<<< orphan*/  Specular; int /*<<< orphan*/  Diffuse; int /*<<< orphan*/  Ambient; } ;
typedef  scalar_t__ GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double,double,double,double) ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC2 (struct gl_light*) ; 

__attribute__((used)) static void FUNC3( struct gl_light *l, GLuint n )
{
   FUNC1( l->Ambient, 0.0, 0.0, 0.0, 1.0 );
   if (n==0) {
      FUNC1( l->Diffuse, 1.0, 1.0, 1.0, 1.0 );
      FUNC1( l->Specular, 1.0, 1.0, 1.0, 1.0 );
   }
   else {
      FUNC1( l->Diffuse, 0.0, 0.0, 0.0, 1.0 );
      FUNC1( l->Specular, 0.0, 0.0, 0.0, 1.0 );
   }
   FUNC1( l->Position, 0.0, 0.0, 1.0, 0.0 );
   FUNC0( l->Direction, 0.0, 0.0, -1.0 );
   l->SpotExponent = 0.0;
   FUNC2( l );
   l->SpotCutoff = 180.0;
   l->CosCutoff = -1.0;
   l->ConstantAttenuation = 1.0;
   l->LinearAttenuation = 0.0;
   l->QuadraticAttenuation = 0.0;
   l->Enabled = GL_FALSE;
}