
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;
__attribute__((used)) static inline LPCSTR debugscrollcode(int nScrollCode)
{
  switch(nScrollCode)
  {
  case 133: return "SB_LINELEFT";
  case 132: return "SB_LINERIGHT";
  case 131: return "SB_PAGELEFT";
  case 130: return "SB_PAGERIGHT";
  case 129: return "SB_THUMBPOSITION";
  case 128: return "SB_THUMBTRACK";
  case 135: return "SB_ENDSCROLL";
  case 134: return "SB_INTERNAL";
  default: return "unknown";
  }
}
