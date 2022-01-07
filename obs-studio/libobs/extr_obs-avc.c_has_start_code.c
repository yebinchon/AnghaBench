
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline bool has_start_code(const uint8_t *data)
{
 if (data[0] != 0 || data[1] != 0)
  return 0;

 return data[2] == 1 || (data[2] == 0 && data[3] == 1);
}
