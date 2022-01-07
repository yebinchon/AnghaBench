
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_texture_object {int Name; int Dimensions; float MinMagThresh; int* Palette; int PaletteSize; struct gl_texture_object* Next; void* PaletteFormat; void* PaletteIntFormat; int MagFilter; int MinFilter; void* WrapT; void* WrapS; } ;
struct gl_shared_state {int TexObjects; struct gl_texture_object* TexObjectList; } ;
typedef int GLuint ;


 int GL_LINEAR ;
 int GL_NEAREST_MIPMAP_LINEAR ;
 void* GL_REPEAT ;
 void* GL_RGBA ;
 int HashInsert (int ,int,struct gl_texture_object*) ;
 int assert (int) ;
 scalar_t__ calloc (int,int) ;

struct gl_texture_object *
gl_alloc_texture_object( struct gl_shared_state *shared, GLuint name,
                         GLuint dimensions)
{
   struct gl_texture_object *obj;

   assert(dimensions >= 0 && dimensions <= 2);

   obj = (struct gl_texture_object *)
                     calloc(1,sizeof(struct gl_texture_object));
   if (obj) {

      obj->Name = name;
      obj->Dimensions = dimensions;
      obj->WrapS = GL_REPEAT;
      obj->WrapT = GL_REPEAT;
      obj->MinFilter = GL_NEAREST_MIPMAP_LINEAR;
      obj->MagFilter = GL_LINEAR;
      obj->MinMagThresh = 0.0F;
      obj->Palette[0] = 255;
      obj->Palette[1] = 255;
      obj->Palette[2] = 255;
      obj->Palette[3] = 255;
      obj->PaletteSize = 1;
      obj->PaletteIntFormat = GL_RGBA;
      obj->PaletteFormat = GL_RGBA;


      if (shared) {
         obj->Next = shared->TexObjectList;
         shared->TexObjectList = obj;
      }

      if (name > 0) {

         HashInsert(shared->TexObjects, name, obj);
      }
   }
   return obj;
}
