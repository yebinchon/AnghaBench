
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int puth2 (unsigned char const) ;
 int puts (char*) ;

void hexdump(const void *a, int l) {
  if (a != ((void*)0)) {
    for (int i=0; i < l; i++) {
      if ((i != 0) && ((i & 0xf) == 0)) puts("\n");
      puth2(((const unsigned char*)a)[i]);
      puts(" ");
    }
  }
  puts("\n");
}
