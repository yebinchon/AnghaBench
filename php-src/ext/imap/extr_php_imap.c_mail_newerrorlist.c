
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ERRORLIST ;


 int fs_get (int) ;
 scalar_t__ memset (int ,int ,int) ;

ERRORLIST *mail_newerrorlist(void)
{
 return (ERRORLIST *) memset(fs_get(sizeof(ERRORLIST)), 0, sizeof(ERRORLIST));
}
