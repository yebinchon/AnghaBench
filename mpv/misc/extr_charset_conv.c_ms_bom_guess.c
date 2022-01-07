
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bstr ;


 scalar_t__ bstr_startswith0 (int ,int ) ;
 int * utf_bom ;
 char const** utf_enc ;

__attribute__((used)) static const char *ms_bom_guess(bstr buf)
{
    for (int n = 0; n < 3; n++) {
        if (bstr_startswith0(buf, utf_bom[n]))
            return utf_enc[n];
    }
    return ((void*)0);
}
