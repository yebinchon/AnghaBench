
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfxinfo {unsigned int bits; unsigned int width; unsigned int height; } ;
typedef int php_stream ;
typedef int dim ;


 scalar_t__ ecalloc (int,int) ;
 int php_stream_read (int *,char*,int) ;

__attribute__((used)) static struct gfxinfo *php_handle_ico(php_stream * stream)
{
 struct gfxinfo *result = ((void*)0);
 unsigned char dim[16];
 int num_icons = 0;

 if (php_stream_read(stream, (char *) dim, 2) != 2)
  return ((void*)0);

 num_icons = (((unsigned int)dim[1]) << 8) + ((unsigned int) dim[0]);

 if (num_icons < 1 || num_icons > 255)
  return ((void*)0);

 result = (struct gfxinfo *) ecalloc(1, sizeof(struct gfxinfo));

 while (num_icons > 0)
 {
  if (php_stream_read(stream, (char *) dim, sizeof(dim)) != sizeof(dim))
   break;

  if ((((unsigned int)dim[7]) << 8) + ((unsigned int)dim[6]) >= result->bits)
  {
   result->width = (unsigned int)dim[0];
   result->height = (unsigned int)dim[1];
   result->bits = (((unsigned int)dim[7]) << 8) + ((unsigned int)dim[6]);
  }
  num_icons--;
 }

 return result;
}
