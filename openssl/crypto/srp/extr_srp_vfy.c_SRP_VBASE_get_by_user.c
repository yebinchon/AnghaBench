
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SRP_user_pwd ;
typedef int SRP_VBASE ;


 int * find_user (int *,char*) ;

SRP_user_pwd *SRP_VBASE_get_by_user(SRP_VBASE *vb, char *username)
{
    return find_user(vb, username);
}
