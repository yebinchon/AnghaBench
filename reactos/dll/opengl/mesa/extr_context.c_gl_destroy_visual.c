
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvisual ;


 int free (int *) ;

void gl_destroy_visual( GLvisual *vis )
{
   free( vis );
}
