
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfxinfo {unsigned int width; unsigned int height; } ;
typedef int php_stream ;


 int IMAGE_FILETYPE_XBM ;
 scalar_t__ ecalloc (int,int) ;
 int efree (char*) ;
 char* estrdup (char*) ;
 char* php_stream_gets (int *,int *,int ) ;
 scalar_t__ php_stream_rewind (int *) ;
 int sscanf (char*,char*,char*,int*) ;
 int strcmp (char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int php_get_xbm(php_stream *stream, struct gfxinfo **result)
{
    char *fline;
    char *iname;
    char *type;
    int value;
    unsigned int width = 0, height = 0;

 if (result) {
  *result = ((void*)0);
 }
 if (php_stream_rewind(stream)) {
  return 0;
 }
 while ((fline=php_stream_gets(stream, ((void*)0), 0)) != ((void*)0)) {
  iname = estrdup(fline);
  if (sscanf(fline, "#define %s %d", iname, &value) == 2) {
   if (!(type = strrchr(iname, '_'))) {
    type = iname;
   } else {
    type++;
   }

   if (!strcmp("width", type)) {
    width = (unsigned int) value;
    if (height) {
     efree(iname);
     break;
    }
   }
   if (!strcmp("height", type)) {
    height = (unsigned int) value;
    if (width) {
     efree(iname);
     break;
    }
   }
  }
  efree(fline);
  efree(iname);
 }
 if (fline) {
  efree(fline);
 }

 if (width && height) {
  if (result) {
   *result = (struct gfxinfo *) ecalloc(1, sizeof(struct gfxinfo));
   (*result)->width = width;
   (*result)->height = height;
  }
  return IMAGE_FILETYPE_XBM;
 }

 return 0;
}
