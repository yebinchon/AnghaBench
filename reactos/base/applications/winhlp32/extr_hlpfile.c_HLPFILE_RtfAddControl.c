
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RtfData {int in_text; } ;
typedef int BOOL ;


 int FALSE ;
 int HLPFILE_RtfAddRawString (struct RtfData*,char const*,int ) ;
 int TRUE ;
 int WINE_TRACE (char*,int ) ;
 int debugstr_a (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static BOOL HLPFILE_RtfAddControl(struct RtfData* rd, const char* str)
{
    WINE_TRACE("%s\n", debugstr_a(str));
    if (*str == '\\' || *str == '{') rd->in_text = FALSE;
    else if (*str == '}') rd->in_text = TRUE;
    return HLPFILE_RtfAddRawString(rd, str, strlen(str));
}
