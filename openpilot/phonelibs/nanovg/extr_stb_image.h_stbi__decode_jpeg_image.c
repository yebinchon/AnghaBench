
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ progressive; int s; void* marker; scalar_t__ restart_interval; TYPE_1__* img_comp; } ;
typedef TYPE_2__ stbi__jpeg ;
struct TYPE_10__ {int * raw_coeff; int * raw_data; } ;


 void* STBI__MARKER_none ;
 int STBI__SCAN_load ;
 int stbi__EOI (int) ;
 scalar_t__ stbi__SOS (int) ;
 int stbi__at_eof (int ) ;
 int stbi__decode_jpeg_header (TYPE_2__*,int ) ;
 int stbi__err (char*,char*) ;
 void* stbi__get8 (int ) ;
 int stbi__get_marker (TYPE_2__*) ;
 int stbi__jpeg_finish (TYPE_2__*) ;
 int stbi__parse_entropy_coded_data (TYPE_2__*) ;
 int stbi__process_marker (TYPE_2__*,int) ;
 int stbi__process_scan_header (TYPE_2__*) ;

__attribute__((used)) static int stbi__decode_jpeg_image(stbi__jpeg *j)
{
   int m;
   for (m = 0; m < 4; m++) {
      j->img_comp[m].raw_data = ((void*)0);
      j->img_comp[m].raw_coeff = ((void*)0);
   }
   j->restart_interval = 0;
   if (!stbi__decode_jpeg_header(j, STBI__SCAN_load)) return 0;
   m = stbi__get_marker(j);
   while (!stbi__EOI(m)) {
      if (stbi__SOS(m)) {
         if (!stbi__process_scan_header(j)) return 0;
         if (!stbi__parse_entropy_coded_data(j)) return 0;
         if (j->marker == STBI__MARKER_none ) {

            while (!stbi__at_eof(j->s)) {
               int x = stbi__get8(j->s);
               if (x == 255) {
                  j->marker = stbi__get8(j->s);
                  break;
               } else if (x != 0) {
                  return stbi__err("junk before marker", "Corrupt JPEG");
               }
            }

         }
      } else {
         if (!stbi__process_marker(j, m)) return 0;
      }
      m = stbi__get_marker(j);
   }
   if (j->progressive)
      stbi__jpeg_finish(j);
   return 1;
}
