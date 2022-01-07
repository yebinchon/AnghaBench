
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 scalar_t__ lseek (int,int ,int ) ;
 int read (int,void*,int) ;

__attribute__((used)) static int debug_os_read_at(int fdn, void *buf, int sz, ut64 addr) {
 if (lseek (fdn, addr, 0) < 0) {
  return -1;
 }
 return read (fdn, buf, sz);
}
