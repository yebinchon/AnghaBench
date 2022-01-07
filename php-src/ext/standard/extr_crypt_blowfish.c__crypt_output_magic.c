
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int _crypt_output_magic(const char *setting, char *output, int size)
{
 if (size < 3)
  return -1;

 output[0] = '*';
 output[1] = '0';
 output[2] = '\0';

 if (setting[0] == '*' && setting[1] == '0')
  output[1] = '1';

 return 0;
}
