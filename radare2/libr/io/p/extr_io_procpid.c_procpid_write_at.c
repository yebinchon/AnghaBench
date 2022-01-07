
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;


 scalar_t__ lseek (int,int ,int ) ;
 int write (int,int const*,int) ;

__attribute__((used)) static int procpid_write_at(int fd, const ut8 *buf, int sz, ut64 addr) {
 if (lseek (fd, addr, 0) < 0) {
  return -1;
 }
 return write (fd, buf, sz);
}
