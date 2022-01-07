
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int ebuf; } ;


 int efree (int ) ;

void
buffer_fini(struct buffer *b)
{
 efree(b->ebuf);
}
