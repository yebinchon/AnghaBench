
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int buf ;
typedef int RBuffer ;


 int eprintf (char*) ;
 int memcmp (int*,char*,int) ;
 int r_buf_read_at (int *,int ,int*,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut8 buf[8];
 if (r_buf_read_at (b, 0, buf, sizeof (buf)) != sizeof (buf)) {
  return 0;
 }
 if (r_buf_size (b) >= 32 && !memcmp (buf, "MENUET0", 7)) {
  switch (buf[7]) {
  case '0':
  case '1':
  case '2':
   return 1;
  }
  eprintf ("Unsupported MENUET version header\n");
 }
 return 0;
}
