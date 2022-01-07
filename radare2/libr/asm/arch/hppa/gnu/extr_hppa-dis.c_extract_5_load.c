
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MASK_5 ;
 int low_sign_extend (unsigned int,int) ;

__attribute__((used)) static int
extract_5_load (unsigned word)
{
  return low_sign_extend (word >> 16 & MASK_5, 5);
}
