
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MASK_5 ;

__attribute__((used)) static unsigned
extract_5r_store (unsigned word)
{
  return (word & MASK_5);
}
