
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
data_barrier_option (unsigned option)
{
  switch (option & 0xf)
    {
    case 0xf: return "sy";
    case 0xe: return "st";
    case 0xd: return "ld";
    case 0xb: return "ish";
    case 0xa: return "ishst";
    case 0x9: return "ishld";
    case 0x7: return "un";
    case 0x6: return "unst";
    case 0x5: return "nshld";
    case 0x3: return "osh";
    case 0x2: return "oshst";
    case 0x1: return "oshld";
    default: return ((void*)0);
    }
}
