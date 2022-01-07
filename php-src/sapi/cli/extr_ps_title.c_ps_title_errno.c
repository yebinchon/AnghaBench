
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetLastError () ;





 int sprintf (char const*,char*,int ) ;
 char const* windows_error_details ;

const char* ps_title_errno(int rc)
{
    switch(rc)
    {
    case 129:
        return "Success";

    case 131:
        return "Not available on this OS";

    case 130:
        return "Not initialized correctly";

    case 132:
        return "Buffer not contiguous";






    }

    return "Unknown error code";
}
