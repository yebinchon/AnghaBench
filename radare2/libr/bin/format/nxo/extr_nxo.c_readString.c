
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int symbol ;
typedef int RBuffer ;


 int r_buf_read_at (int *,int,int *,int) ;
 char* strdup (char*) ;

__attribute__((used)) static char *readString(RBuffer *buf, int off) {
 char symbol[128];
 int left = r_buf_read_at (buf, off, (ut8*)symbol, sizeof (symbol));
 if (left < 1) {
  return ((void*)0);
 }
 symbol[sizeof (symbol) - 1] = 0;
 return strdup (symbol);
}
