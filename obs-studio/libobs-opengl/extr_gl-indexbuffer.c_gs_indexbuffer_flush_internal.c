
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int buffer; int dynamic; } ;
typedef TYPE_1__ gs_indexbuffer_t ;


 int GL_ELEMENT_ARRAY_BUFFER ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int update_buffer (int ,int ,void const*,int ) ;

__attribute__((used)) static inline void gs_indexbuffer_flush_internal(gs_indexbuffer_t *ib,
       const void *data)
{
 if (!ib->dynamic) {
  blog(LOG_ERROR, "Index buffer is not dynamic");
  goto fail;
 }

 if (!update_buffer(GL_ELEMENT_ARRAY_BUFFER, ib->buffer, data, ib->size))
  goto fail;

 return;

fail:
 blog(LOG_ERROR, "gs_indexbuffer_flush (GL) failed");
}
