
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfxinfo {unsigned int width; unsigned int height; unsigned int bits; } ;
typedef int php_stream ;
typedef int dim ;


 int SEEK_CUR ;
 scalar_t__ ecalloc (int,int) ;
 int php_stream_read (int *,char*,int) ;
 scalar_t__ php_stream_seek (int *,int,int ) ;

__attribute__((used)) static struct gfxinfo *php_handle_png (php_stream * stream)
{
 struct gfxinfo *result = ((void*)0);
 unsigned char dim[9];
 if (php_stream_seek(stream, 8, SEEK_CUR))
  return ((void*)0);

 if((php_stream_read(stream, (char*)dim, sizeof(dim))) < sizeof(dim))
  return ((void*)0);

 result = (struct gfxinfo *) ecalloc(1, sizeof(struct gfxinfo));
 result->width = (((unsigned int)dim[0]) << 24) + (((unsigned int)dim[1]) << 16) + (((unsigned int)dim[2]) << 8) + ((unsigned int)dim[3]);
 result->height = (((unsigned int)dim[4]) << 24) + (((unsigned int)dim[5]) << 16) + (((unsigned int)dim[6]) << 8) + ((unsigned int)dim[7]);
 result->bits = (unsigned int)dim[8];
 return result;
}
