
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int unichar ;


 int file_looks_utf8 (int const*,size_t,int *,size_t*) ;

__attribute__((used)) static int looks_utf8_with_BOM(const ut8 *buf, size_t nbytes, unichar *ubuf, size_t *ulen) {
 if (nbytes > 3 && buf[0] == 0xef && buf[1] == 0xbb && buf[2] == 0xbf) {
  return file_looks_utf8 (buf + 3, nbytes - 3, ubuf, ulen);
 }
 return -1;
}
