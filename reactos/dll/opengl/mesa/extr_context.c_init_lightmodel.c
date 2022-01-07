
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_lightmodel {void* TwoSide; void* LocalViewer; int Ambient; } ;


 int ASSIGN_4V (int ,float,float,float,float) ;
 void* GL_FALSE ;

__attribute__((used)) static void init_lightmodel( struct gl_lightmodel *lm )
{
   ASSIGN_4V( lm->Ambient, 0.2f, 0.2f, 0.2f, 1.0f );
   lm->LocalViewer = GL_FALSE;
   lm->TwoSide = GL_FALSE;
}
