
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CC_CRLF ;
 int CC_PRINT ;
 int string_mod (char*,int ,int ,char) ;

__attribute__((used)) static void
string_mod_remap_name(char *str)
{
    string_mod(str, CC_PRINT, CC_CRLF, '_');
}
