
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long d; int * o; } ;
typedef int RRDR_VALUE_FLAGS ;
typedef TYPE_1__ RRDR ;



__attribute__((used)) static inline RRDR_VALUE_FLAGS *rrdr_line_options(RRDR *r, long rrdr_line) {
    return &r->o[ rrdr_line * r->d ];
}
