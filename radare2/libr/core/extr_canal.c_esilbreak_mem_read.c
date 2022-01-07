
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
typedef scalar_t__ ut64 ;
typedef int str ;
struct TYPE_8__ {int anal; int io; } ;
struct TYPE_7__ {int address; TYPE_1__* anal; } ;
struct TYPE_6__ {int big_endian; } ;
typedef TYPE_2__ RAnalEsil ;


 int R_ANAL_REF_TYPE_DATA ;
 scalar_t__ UT64_MAX ;
 int add_string_ref (TYPE_3__*,int ,scalar_t__) ;
 scalar_t__ esilbreak_last_data ;
 scalar_t__ esilbreak_last_read ;
 TYPE_3__* mycore ;
 scalar_t__ myvalid (int ,scalar_t__) ;
 scalar_t__ ntarget ;
 int r_anal_xrefs_set (int ,int ,scalar_t__,int ) ;
 int r_io_read_at (int ,scalar_t__,scalar_t__*,int) ;
 int r_read_ble16 (scalar_t__*,int ) ;
 int r_read_ble32 (scalar_t__*,int ) ;
 scalar_t__ r_read_ble64 (scalar_t__*,int ) ;

__attribute__((used)) static int esilbreak_mem_read(RAnalEsil *esil, ut64 addr, ut8 *buf, int len) {
 ut8 str[128];
 if (addr != UT64_MAX) {
  esilbreak_last_read = addr;
 }
 if (myvalid (mycore->io, addr) && r_io_read_at (mycore->io, addr, (ut8*)buf, len)) {
  ut64 refptr;
  bool trace = 1;
  switch (len) {
  case 2:
   esilbreak_last_data = refptr = (ut64)r_read_ble16 (buf, esil->anal->big_endian);
   break;
  case 4:
   esilbreak_last_data = refptr = (ut64)r_read_ble32 (buf, esil->anal->big_endian);
   break;
  case 8:
   esilbreak_last_data = refptr = r_read_ble64 (buf, esil->anal->big_endian);
   break;
  default:
   trace = 0;
   r_io_read_at (mycore->io, addr, (ut8*)buf, len);
   break;
  }

  bool validRef = 0;
  if (trace && myvalid (mycore->io, refptr)) {
   if (ntarget == UT64_MAX || ntarget == refptr) {
    str[0] = 0;
    if (r_io_read_at (mycore->io, refptr, str, sizeof (str)) < 1) {

     str[0] = 0;
     validRef = 0;
    } else {
     r_anal_xrefs_set (mycore->anal, esil->address, refptr, R_ANAL_REF_TYPE_DATA);
     str[sizeof (str) - 1] = 0;
     add_string_ref (mycore, esil->address, refptr);
     esilbreak_last_data = UT64_MAX;
     validRef = 1;
    }
   }
  }


  if (ntarget == UT64_MAX || ntarget == addr || (ntarget == UT64_MAX && !validRef)) {
   r_anal_xrefs_set (mycore->anal, esil->address, addr, R_ANAL_REF_TYPE_DATA);
  }
 }
 return 0;
}
