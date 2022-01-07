
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int marker; int progressive; int s; } ;
typedef TYPE_1__ stbi__jpeg ;


 int STBI__MARKER_none ;
 int STBI__SCAN_type ;
 int stbi__SOF (int) ;
 int stbi__SOF_progressive (int) ;
 int stbi__SOI (int) ;
 scalar_t__ stbi__at_eof (int ) ;
 int stbi__err (char*,char*) ;
 int stbi__get_marker (TYPE_1__*) ;
 int stbi__process_frame_header (TYPE_1__*,int) ;
 int stbi__process_marker (TYPE_1__*,int) ;

__attribute__((used)) static int stbi__decode_jpeg_header(stbi__jpeg *z, int scan)
{
   int m;
   z->marker = STBI__MARKER_none;
   m = stbi__get_marker(z);
   if (!stbi__SOI(m)) return stbi__err("no SOI","Corrupt JPEG");
   if (scan == STBI__SCAN_type) return 1;
   m = stbi__get_marker(z);
   while (!stbi__SOF(m)) {
      if (!stbi__process_marker(z,m)) return 0;
      m = stbi__get_marker(z);
      while (m == STBI__MARKER_none) {

         if (stbi__at_eof(z->s)) return stbi__err("no SOF", "Corrupt JPEG");
         m = stbi__get_marker(z);
      }
   }
   z->progressive = stbi__SOF_progressive(m);
   if (!stbi__process_frame_header(z, scan)) return 0;
   return 1;
}
