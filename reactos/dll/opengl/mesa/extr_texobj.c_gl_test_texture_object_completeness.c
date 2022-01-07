
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_texture_object {scalar_t__ MinFilter; int Dimensions; void* Complete; TYPE_1__** Image; } ;
struct TYPE_2__ {scalar_t__ Format; scalar_t__ Border; int Width2; int Height2; int Data; } ;
typedef int GLuint ;


 void* GL_FALSE ;
 scalar_t__ GL_LINEAR ;
 scalar_t__ GL_NEAREST ;
 void* GL_TRUE ;
 int MAX_TEXTURE_LEVELS ;
 int gl_problem (int *,char*) ;

void gl_test_texture_object_completeness( struct gl_texture_object *t )
{
   t->Complete = GL_TRUE;


   if (!t->Image[0] || !t->Image[0]->Data) {
      t->Complete = GL_FALSE;
      return;
   }

   if (t->MinFilter!=GL_NEAREST && t->MinFilter!=GL_LINEAR) {



      int i;


      for (i=1; i<MAX_TEXTURE_LEVELS; i++) {
         if (t->Image[i]) {
            if (!t->Image[i]->Data) {
               t->Complete = GL_FALSE;
               return;
            }
            if (t->Image[i]->Format != t->Image[0]->Format) {
               t->Complete = GL_FALSE;
               return;
            }
            if (t->Image[i]->Border != t->Image[0]->Border) {
               t->Complete = GL_FALSE;
               return;
            }
         }
      }


      if (t->Dimensions==1) {

         GLuint width = t->Image[0]->Width2;
         for (i=1; i<MAX_TEXTURE_LEVELS; i++) {
            if (width>1) {
               width /= 2;
            }
            if (!t->Image[i]) {
               t->Complete = GL_FALSE;
               return;
            }
            if (!t->Image[i]->Data) {
               t->Complete = GL_FALSE;
               return;
            }
            if (t->Image[i]->Format != t->Image[0]->Format) {
               t->Complete = GL_FALSE;
               return;
            }
            if (t->Image[i]->Border != t->Image[0]->Border) {
               t->Complete = GL_FALSE;
               return;
            }
            if (t->Image[i]->Width2 != width ) {
               t->Complete = GL_FALSE;
               return;
            }
            if (width==1) {
               return;
            }
         }
      }
      else if (t->Dimensions==2) {

         GLuint width = t->Image[0]->Width2;
         GLuint height = t->Image[0]->Height2;
         for (i=1; i<MAX_TEXTURE_LEVELS; i++) {
            if (width>1) {
               width /= 2;
            }
            if (height>1) {
               height /= 2;
            }
            if (!t->Image[i]) {
               t->Complete = GL_FALSE;
               return;
            }
            if (t->Image[i]->Width2 != width) {
               t->Complete = GL_FALSE;
               return;
            }
            if (t->Image[i]->Height2 != height) {
               t->Complete = GL_FALSE;
               return;
            }
            if (width==1 && height==1) {
               return;
            }
         }
      }
      else {

         gl_problem(((void*)0), "Bug in gl_test_texture_object_completeness\n");
      }
   }
}
