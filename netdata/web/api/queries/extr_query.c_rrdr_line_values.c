
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int calculated_number ;
struct TYPE_3__ {long d; int * v; } ;
typedef TYPE_1__ RRDR ;



__attribute__((used)) static inline calculated_number *rrdr_line_values(RRDR *r, long rrdr_line) {
    return &r->v[ rrdr_line * r->d ];
}
