
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Acl ;


 int binary_upgrade_record_init_privs ;
 int creating_extension ;
 int recordExtensionInitPrivWorker (int ,int ,int,int *) ;

__attribute__((used)) static void
recordExtensionInitPriv(Oid objoid, Oid classoid, int objsubid, Acl *new_acl)
{
 if (!creating_extension && !binary_upgrade_record_init_privs)
  return;

 recordExtensionInitPrivWorker(objoid, classoid, objsubid, new_acl);
}
