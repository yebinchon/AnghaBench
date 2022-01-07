
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MASK_5 ;

__attribute__((used)) static unsigned
extract_5Q_store (unsigned word)
{
  return (word >> 21 & MASK_5);
}
