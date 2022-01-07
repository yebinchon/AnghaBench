
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_2__ {scalar_t__ psize; } ;
typedef int SblHeader ;
typedef int RBinFile ;


 TYPE_1__ sb ;

__attribute__((used)) static ut64 size(RBinFile *bf) {
 return sizeof (SblHeader) + sb.psize;
}
