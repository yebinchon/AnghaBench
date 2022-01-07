
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {scalar_t__ input; scalar_t__ input_size; } ;
typedef TYPE_1__ BfvmCPU ;



__attribute__((used)) static inline int is_in_input(ut64 off, BfvmCPU *c) {
 return (off >= c->input && off < c->input+c->input_size);
}
