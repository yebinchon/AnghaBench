
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfxinfo {int width; int height; scalar_t__ channels; int bits; } ;
typedef int php_stream ;
typedef int a ;


 int SEEK_CUR ;
 scalar_t__ ecalloc (int,int) ;
 int php_stream_read (int *,char*,int) ;
 scalar_t__ php_stream_seek (int *,int,int ) ;
 int php_swf_get_bits (unsigned char*,int,long) ;

__attribute__((used)) static struct gfxinfo *php_handle_swf (php_stream * stream)
{
 struct gfxinfo *result = ((void*)0);
 long bits;
 unsigned char a[32];

 if (php_stream_seek(stream, 5, SEEK_CUR))
  return ((void*)0);

 if (php_stream_read(stream, (char*)a, sizeof(a)) != sizeof(a))
  return ((void*)0);

 result = (struct gfxinfo *) ecalloc (1, sizeof (struct gfxinfo));
 bits = php_swf_get_bits (a, 0, 5);
 result->width = (php_swf_get_bits (a, 5 + bits, bits) -
  php_swf_get_bits (a, 5, bits)) / 20;
 result->height = (php_swf_get_bits (a, 5 + (3 * bits), bits) -
  php_swf_get_bits (a, 5 + (2 * bits), bits)) / 20;
 result->bits = 0;
 result->channels = 0;
 return result;
}
