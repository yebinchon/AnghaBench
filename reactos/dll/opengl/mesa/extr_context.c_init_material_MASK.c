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
struct gl_material {double Shininess; int DiffuseIndex; int SpecularIndex; scalar_t__ AmbientIndex; int /*<<< orphan*/  Emission; int /*<<< orphan*/  Specular; int /*<<< orphan*/  Diffuse; int /*<<< orphan*/  Ambient; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_material*) ; 

__attribute__((used)) static void FUNC2( struct gl_material *m )
{
   FUNC0( m->Ambient,  0.2f, 0.2f, 0.2f, 1.0f );
   FUNC0( m->Diffuse,  0.8f, 0.8f, 0.8f, 1.0f );
   FUNC0( m->Specular, 0.0f, 0.0f, 0.0f, 1.0f );
   FUNC0( m->Emission, 0.0f, 0.0f, 0.0f, 1.0f );
   m->Shininess = 0.0;
   m->AmbientIndex = 0;
   m->DiffuseIndex = 1;
   m->SpecularIndex = 1;
   FUNC1( m );
}