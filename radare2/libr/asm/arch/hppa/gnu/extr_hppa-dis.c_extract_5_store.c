
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MASK_5 ;
 int low_sign_extend (unsigned int,int) ;

__attribute__((used)) static int
extract_5_store (unsigned word)
{
  return low_sign_extend (word & MASK_5, 5);
}
