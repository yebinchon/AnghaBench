
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_texture_object {scalar_t__* Image; scalar_t__ Name; struct gl_texture_object* Next; } ;
struct gl_shared_state {int TexObjects; struct gl_texture_object* TexObjectList; } ;
typedef size_t GLuint ;


 int HashRemove (int ,scalar_t__) ;
 size_t MAX_TEXTURE_LEVELS ;
 int assert (struct gl_texture_object*) ;
 int free (struct gl_texture_object*) ;
 int gl_free_texture_image (scalar_t__) ;

void gl_free_texture_object( struct gl_shared_state *shared,
                             struct gl_texture_object *t )
{
   struct gl_texture_object *tprev, *tcurr;

   assert(t);


   if (shared) {
      tprev = ((void*)0);
      tcurr = shared->TexObjectList;
      while (tcurr) {
         if (tcurr==t) {
            if (tprev) {
               tprev->Next = t->Next;
            }
            else {
               shared->TexObjectList = t->Next;
            }
            break;
         }
         tprev = tcurr;
         tcurr = tcurr->Next;
      }
   }

   if (t->Name) {

      HashRemove(shared->TexObjects, t->Name);
   }


   {
      GLuint i;
      for (i=0;i<MAX_TEXTURE_LEVELS;i++) {
         if (t->Image[i]) {
            gl_free_texture_image( t->Image[i] );
         }
      }
   }

   free( t );
}
