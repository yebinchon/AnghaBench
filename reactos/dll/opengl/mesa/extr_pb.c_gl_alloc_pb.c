
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixel_buffer {double* lambda; int primitive; } ;


 int GL_BITMAP ;
 int PB_SIZE ;
 scalar_t__ calloc (int,int) ;

struct pixel_buffer *gl_alloc_pb(void)
{
   struct pixel_buffer *pb;
   pb = (struct pixel_buffer *) calloc(sizeof(struct pixel_buffer), 1);
   if (pb) {
      int i;

      pb->primitive = GL_BITMAP;



      for (i=0; i<PB_SIZE; i++) {
         pb->lambda[i] = 0.0;
      }
   }
   return pb;
}
