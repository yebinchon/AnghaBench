
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;







const char* secflavorop2name(DWORD sec_flavor)
{
    switch(sec_flavor) {
    case 128: return "AUTH_SYS";
    case 131: return "AUTHGSS_KRB5";
    case 130: return "AUTHGSS_KRB5I";
    case 129: return "AUTHGSS_KRB5P";
    }

    return "UNKNOWN FLAVOR";
}
