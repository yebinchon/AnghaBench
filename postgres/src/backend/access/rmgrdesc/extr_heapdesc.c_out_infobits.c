
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int StringInfo ;


 int XLHL_KEYS_UPDATED ;
 int XLHL_XMAX_EXCL_LOCK ;
 int XLHL_XMAX_IS_MULTI ;
 int XLHL_XMAX_KEYSHR_LOCK ;
 int XLHL_XMAX_LOCK_ONLY ;
 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
out_infobits(StringInfo buf, uint8 infobits)
{
 if (infobits & XLHL_XMAX_IS_MULTI)
  appendStringInfoString(buf, "IS_MULTI ");
 if (infobits & XLHL_XMAX_LOCK_ONLY)
  appendStringInfoString(buf, "LOCK_ONLY ");
 if (infobits & XLHL_XMAX_EXCL_LOCK)
  appendStringInfoString(buf, "EXCL_LOCK ");
 if (infobits & XLHL_XMAX_KEYSHR_LOCK)
  appendStringInfoString(buf, "KEYSHR_LOCK ");
 if (infobits & XLHL_KEYS_UPDATED)
  appendStringInfoString(buf, "KEYS_UPDATED ");
}
