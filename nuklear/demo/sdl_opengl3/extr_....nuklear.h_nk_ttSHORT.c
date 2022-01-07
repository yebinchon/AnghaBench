
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nk_short ;
typedef int nk_byte ;



__attribute__((used)) static nk_short nk_ttSHORT(const nk_byte *p) { return (nk_short)(p[0]*256 + p[1]); }
