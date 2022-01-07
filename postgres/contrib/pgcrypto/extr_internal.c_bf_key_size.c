
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PX_Cipher ;



__attribute__((used)) static unsigned
bf_key_size(PX_Cipher *c)
{
 return 448 / 8;
}
