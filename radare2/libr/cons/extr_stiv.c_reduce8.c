
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POND (int,int) ;

__attribute__((used)) static int reduce8 (int r, int g, int b) {
 int colors_len = 8;
 int select = 0;
 int odistance = -1;
 int i, k = 1;
 int colors[][3] = {
  { 0x00,0x00,0x00 },
  { 0xd0,0x10,0x10 },
  { 0x10,0xe0,0x10 },
  { 0xf7,0xf5,0x3a },
  { 0x10,0x10,0xf0 },
  { 0xfb,0x3d,0xf8 },
  { 0x10,0xf0,0xf0 },
  { 0xf0,0xf0,0xf0 },
 };

 r /= k; r *= k;
 g /= k; g *= k;
 b /= k; b *= k;

 if (r<30 && g<30 && b<30) return 0;
 if (r>200&& g>200&& b>200) return 7;
 odistance = -1;
 for (i = 0; i<colors_len; i++) {
  int distance =
     POND (colors[i][0]-r, r)
   + POND (colors[i][1]-g, g)
   + POND (colors[i][2]-b, b);
  if (odistance == -1 || distance < odistance) {
   odistance = distance;
   select = i;
  }
 }
 return select;
}
