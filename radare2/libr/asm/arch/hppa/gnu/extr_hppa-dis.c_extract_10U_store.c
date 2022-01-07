
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MASK_10 ;

__attribute__((used)) static unsigned
extract_10U_store (unsigned word)
{
  return (word >> 16 & MASK_10);
}
