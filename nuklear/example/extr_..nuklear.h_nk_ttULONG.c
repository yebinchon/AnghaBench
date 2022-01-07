
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nk_uint ;
typedef int nk_byte ;



__attribute__((used)) static nk_uint nk_ttULONG(const nk_byte *p) { return (nk_uint)((p[0]<<24) + (p[1]<<16) + (p[2]<<8) + p[3]); }
