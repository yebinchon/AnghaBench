
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * kull_m_string_qad_ansi_c_to_unicode (char const*,int ) ;
 int strlen (char const*) ;

wchar_t * kull_m_string_qad_ansi_to_unicode(const char * ansi)
{
 wchar_t * buffer = ((void*)0);
 if(ansi)
  buffer = kull_m_string_qad_ansi_c_to_unicode(ansi, strlen(ansi));
 return buffer;
}
