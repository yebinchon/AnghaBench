
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_indexbuffer_t ;


 int gs_indexbuffer_flush_internal (int *,void const*) ;

void gs_indexbuffer_flush_direct(gs_indexbuffer_t *ib, const void *data)
{
 gs_indexbuffer_flush_internal(ib, data);
}
