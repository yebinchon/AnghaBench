
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GET_FIELD (unsigned int,int,int) ;

__attribute__((used)) static int
extract_3 (unsigned word)
{
  return GET_FIELD (word, 18, 18) << 2 | GET_FIELD (word, 16, 17);
}
