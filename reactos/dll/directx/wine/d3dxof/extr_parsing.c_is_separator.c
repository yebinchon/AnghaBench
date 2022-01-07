
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 scalar_t__ is_operator (char) ;
 scalar_t__ is_space (char) ;

__attribute__((used)) static inline BOOL is_separator(char c)
{
  return is_space(c) || is_operator(c);
}
