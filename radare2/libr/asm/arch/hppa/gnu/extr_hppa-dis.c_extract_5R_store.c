
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MASK_5 ;

__attribute__((used)) static unsigned
extract_5R_store (unsigned word)
{
  return (word >> 16 & MASK_5);
}
