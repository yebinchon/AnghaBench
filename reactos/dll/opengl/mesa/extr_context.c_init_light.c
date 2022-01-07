
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_light {double SpotExponent; double SpotCutoff; double CosCutoff; double ConstantAttenuation; double LinearAttenuation; double QuadraticAttenuation; int Enabled; int Direction; int Position; int Specular; int Diffuse; int Ambient; } ;
typedef scalar_t__ GLuint ;


 int ASSIGN_3V (int ,double,double,double) ;
 int ASSIGN_4V (int ,double,double,double,double) ;
 int GL_FALSE ;
 int gl_compute_spot_exp_table (struct gl_light*) ;

__attribute__((used)) static void init_light( struct gl_light *l, GLuint n )
{
   ASSIGN_4V( l->Ambient, 0.0, 0.0, 0.0, 1.0 );
   if (n==0) {
      ASSIGN_4V( l->Diffuse, 1.0, 1.0, 1.0, 1.0 );
      ASSIGN_4V( l->Specular, 1.0, 1.0, 1.0, 1.0 );
   }
   else {
      ASSIGN_4V( l->Diffuse, 0.0, 0.0, 0.0, 1.0 );
      ASSIGN_4V( l->Specular, 0.0, 0.0, 0.0, 1.0 );
   }
   ASSIGN_4V( l->Position, 0.0, 0.0, 1.0, 0.0 );
   ASSIGN_3V( l->Direction, 0.0, 0.0, -1.0 );
   l->SpotExponent = 0.0;
   gl_compute_spot_exp_table( l );
   l->SpotCutoff = 180.0;
   l->CosCutoff = -1.0;
   l->ConstantAttenuation = 1.0;
   l->LinearAttenuation = 0.0;
   l->QuadraticAttenuation = 0.0;
   l->Enabled = GL_FALSE;
}
