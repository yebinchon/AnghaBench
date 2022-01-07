
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int (* disasm ) (int ,int) ;int user; } ;
typedef TYPE_1__ RPrint ;


 int R_MAX (int,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int r_print_format_disasm(const RPrint* p, ut64 seeki, int size) {
 ut64 prevseeki = seeki;

 if (!p->disasm || !p->user) {
  return 0;
 }

 size = R_MAX (1, size);

 while (size-- > 0) {
  seeki += p->disasm (p->user, seeki);
 }

 return seeki - prevseeki;
}
