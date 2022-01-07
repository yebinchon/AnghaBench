
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;
typedef int XLogRecPtr ;


 int Assert (int ) ;
 int InvalidXLogRecPtr ;
 int MAXPG_LSNCOMPONENT ;
 int strspn (char const*,char*) ;
 scalar_t__ strtoul (char const*,int *,int) ;

XLogRecPtr
pg_lsn_in_internal(const char *str, bool *have_error)
{
 int len1,
    len2;
 uint32 id,
    off;
 XLogRecPtr result;

 Assert(have_error != ((void*)0));
 *have_error = 0;


 len1 = strspn(str, "0123456789abcdefABCDEF");
 if (len1 < 1 || len1 > MAXPG_LSNCOMPONENT || str[len1] != '/')
 {
  *have_error = 1;
  return InvalidXLogRecPtr;
 }
 len2 = strspn(str + len1 + 1, "0123456789abcdefABCDEF");
 if (len2 < 1 || len2 > MAXPG_LSNCOMPONENT || str[len1 + 1 + len2] != '\0')
 {
  *have_error = 1;
  return InvalidXLogRecPtr;
 }


 id = (uint32) strtoul(str, ((void*)0), 16);
 off = (uint32) strtoul(str + len1 + 1, ((void*)0), 16);
 result = ((uint64) id << 32) | off;

 return result;
}
