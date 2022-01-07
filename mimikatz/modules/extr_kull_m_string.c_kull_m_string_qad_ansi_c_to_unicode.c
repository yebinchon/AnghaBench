
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int SIZE_T ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;

wchar_t * kull_m_string_qad_ansi_c_to_unicode(const char * ansi, SIZE_T szStr)
{
 wchar_t * buffer = ((void*)0);
 SIZE_T i;

 if(ansi && szStr)
  if(buffer = (wchar_t *) LocalAlloc(LPTR, (szStr + 1) * sizeof(wchar_t)))
   for(i = 0; i < szStr; i++)
    buffer[i] = ansi[i];
 return buffer;
}
