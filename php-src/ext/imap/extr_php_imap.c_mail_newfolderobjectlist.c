
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FOBJECTLIST ;


 int fs_get (int) ;
 scalar_t__ memset (int ,int ,int) ;

FOBJECTLIST *mail_newfolderobjectlist(void)
{
 return (FOBJECTLIST *) memset(fs_get(sizeof(FOBJECTLIST)), 0, sizeof(FOBJECTLIST));
}
