
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;



__attribute__((used)) static inline ut64 rsp_mem_addr(ut64 addr, ut64 base) { addr &= 0xfff; addr |= base; return addr; }
