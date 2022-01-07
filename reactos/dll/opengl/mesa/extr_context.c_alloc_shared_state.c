
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shared_state {void* Default2D; void* Default1D; void* TexObjects; void* DisplayList; } ;


 int DeleteHashTable (void*) ;
 void* NewHashTable () ;
 scalar_t__ calloc (int,int) ;
 int free (struct gl_shared_state*) ;
 void* gl_alloc_texture_object (struct gl_shared_state*,int ,int) ;
 int gl_free_texture_object (struct gl_shared_state*,void*) ;

__attribute__((used)) static struct gl_shared_state *alloc_shared_state( void )
{
   struct gl_shared_state *ss;

   ss = (struct gl_shared_state*) calloc( 1, sizeof(struct gl_shared_state) );
   if (!ss)
      return ((void*)0);

   ss->DisplayList = NewHashTable();

   ss->TexObjects = NewHashTable();


   ss->Default1D = gl_alloc_texture_object(ss, 0, 1);
   ss->Default2D = gl_alloc_texture_object(ss, 0, 2);

   if (!ss->DisplayList || !ss->TexObjects
       || !ss->Default1D || !ss->Default2D) {

      if (!ss->DisplayList)
         DeleteHashTable(ss->DisplayList);
      if (!ss->TexObjects)
         DeleteHashTable(ss->TexObjects);
      if (!ss->Default1D)
         gl_free_texture_object(ss, ss->Default1D);
      if (!ss->Default2D)
         gl_free_texture_object(ss, ss->Default2D);
      free(ss);
      return ((void*)0);
   }
   else {
      return ss;
   }
}
