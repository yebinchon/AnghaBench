
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_index_buffer {int * data; scalar_t__ dynamic; int size; int buffer; } ;
typedef int GLenum ;


 int GL_DYNAMIC_DRAW ;
 int GL_ELEMENT_ARRAY_BUFFER ;
 int GL_STATIC_DRAW ;
 int bfree (int *) ;
 int gl_create_buffer (int ,int *,int ,int *,int ) ;

__attribute__((used)) static inline bool init_ib(struct gs_index_buffer *ib)
{
 GLenum usage = ib->dynamic ? GL_DYNAMIC_DRAW : GL_STATIC_DRAW;
 bool success;

 success = gl_create_buffer(GL_ELEMENT_ARRAY_BUFFER, &ib->buffer,
       ib->size, ib->data, usage);

 if (!ib->dynamic) {
  bfree(ib->data);
  ib->data = ((void*)0);
 }

 return success;
}
