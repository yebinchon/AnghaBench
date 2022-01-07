
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int SV ;
typedef int HV ;


 int PG_UTF8 ;
 int dTHX ;
 int ** hv_fetch (int *,char*,int,int ) ;
 int pfree (char*) ;
 char* pg_server_to_any (char const*,scalar_t__,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static SV **
hv_fetch_string(HV *hv, const char *key)
{
 dTHX;
 int32 hlen;
 char *hkey;
 SV **ret;

 hkey = pg_server_to_any(key, strlen(key), PG_UTF8);


 hlen = -(int) strlen(hkey);
 ret = hv_fetch(hv, hkey, hlen, 0);

 if (hkey != key)
  pfree(hkey);

 return ret;
}
