
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shared_state {int TexObjects; scalar_t__ TexObjectList; int DisplayList; } ;
typedef scalar_t__ GLuint ;
typedef int GLcontext ;


 int DeleteHashTable (int ) ;
 scalar_t__ HashFirstEntry (int ) ;
 int free (struct gl_shared_state*) ;
 int gl_destroy_list (int *,scalar_t__) ;
 int gl_free_texture_object (struct gl_shared_state*,scalar_t__) ;

__attribute__((used)) static void free_shared_state( GLcontext *ctx, struct gl_shared_state *ss )
{

   while (1) {
      GLuint list = HashFirstEntry(ss->DisplayList);
      if (list) {
         gl_destroy_list(ctx, list);
      }
      else {
         break;
      }
   }
   DeleteHashTable(ss->DisplayList);


   while (ss->TexObjectList)
   {

      gl_free_texture_object(ss, ss->TexObjectList);
   }
   DeleteHashTable(ss->TexObjects);

   free(ss);
}
