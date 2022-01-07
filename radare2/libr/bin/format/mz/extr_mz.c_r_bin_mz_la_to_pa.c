
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct r_bin_mz_obj_t {TYPE_1__* dos_header; } ;
struct TYPE_2__ {int header_paragraphs; } ;



__attribute__((used)) static ut64 r_bin_mz_la_to_pa(const struct r_bin_mz_obj_t *bin, ut64 la) {
 return la + (bin->dos_header->header_paragraphs << 4);
}
