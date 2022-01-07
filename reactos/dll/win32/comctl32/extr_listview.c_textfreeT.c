
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int BOOL ;


 int Free (int ) ;
 scalar_t__ is_text (int ) ;

__attribute__((used)) static inline void textfreeT(LPWSTR wstr, BOOL isW)
{
    if (!isW && is_text(wstr)) Free (wstr);
}
