
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RList ;
typedef int RBuffer ;


 int addsym (int *,int ,int ) ;
 scalar_t__ rjmp (int *,int ) ;
 int rjmp_dest (int ,int *) ;
 int sdb_fmt (char*,char const*) ;

__attribute__((used)) static void addptr(RList *ret, const char *name, ut64 addr, RBuffer *b) {
 if (b && rjmp (b, 0)) {
  addsym (ret, sdb_fmt ("vector.%s", name), addr);
  ut64 ptr_addr = rjmp_dest (addr, b);
  addsym (ret, sdb_fmt ("syscall.%s", name), ptr_addr);
 }
}
