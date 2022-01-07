
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PWCHAR ;
typedef size_t DWORD ;


 size_t ARRAYSIZE (int*) ;
 int* kull_m_file_forbiddenChars ;

void kull_m_file_cleanFilename(PWCHAR fileName)
{
 DWORD i, j;
 for(i = 0; fileName[i]; i++)
  for(j = 0; j < ARRAYSIZE(kull_m_file_forbiddenChars); j++)
   if(fileName[i] == kull_m_file_forbiddenChars[j])
    fileName[i] = L'~';
}
