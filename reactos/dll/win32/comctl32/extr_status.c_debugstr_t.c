
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef int LPCSTR ;
typedef scalar_t__ BOOL ;


 int debugstr_a (int ) ;
 int debugstr_w (scalar_t__) ;

__attribute__((used)) static inline LPCSTR debugstr_t(LPCWSTR text, BOOL isW)
{
  return isW ? debugstr_w(text) : debugstr_a((LPCSTR)text);
}
