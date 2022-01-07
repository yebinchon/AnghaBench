
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MESSAGELIST ;


 int fs_get (int) ;
 scalar_t__ memset (int ,int ,int) ;

MESSAGELIST *mail_newmessagelist(void)
{
 return (MESSAGELIST *) memset(fs_get(sizeof(MESSAGELIST)), 0, sizeof(MESSAGELIST));
}
