
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_4__ {scalar_t__ fields_offset; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
typedef TYPE_2__ RBinDexObj ;



__attribute__((used)) static ut64 dex_field_offset(RBinDexObj *bin, int fid) {
 return bin->header.fields_offset + (fid * 8);
}
