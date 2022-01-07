
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* phar; } ;
typedef TYPE_1__ phar_entry_data ;
struct TYPE_8__ {int fname_len; int fname; } ;
typedef TYPE_2__ phar_archive_data ;


 int efree (char*) ;
 int phar_ce_PharException ;
 int phar_entry_delref (TYPE_1__*) ;
 int phar_flush (TYPE_2__*,int ,int ,int ,char**) ;
 TYPE_1__* phar_get_or_create_entry_data (int ,int ,char*,size_t,char*,int,char**,int) ;
 int spl_ce_BadMethodCallException ;
 int zend_throw_exception_ex (int ,int ,char*,char*,...) ;

__attribute__((used)) static void phar_mkdir(phar_archive_data **pphar, char *dirname, size_t dirname_len)
{
 char *error;
 phar_entry_data *data;

 if (!(data = phar_get_or_create_entry_data((*pphar)->fname, (*pphar)->fname_len, dirname, dirname_len, "w+b", 2, &error, 1))) {
  if (error) {
   zend_throw_exception_ex(spl_ce_BadMethodCallException, 0, "Directory %s does not exist and cannot be created: %s", dirname, error);
   efree(error);
  } else {
   zend_throw_exception_ex(spl_ce_BadMethodCallException, 0, "Directory %s does not exist and cannot be created", dirname);
  }

  return;
 } else {
  if (error) {
   efree(error);
  }


  if (data->phar != *pphar) {
   *pphar = data->phar;
  }
  phar_entry_delref(data);
  phar_flush(*pphar, 0, 0, 0, &error);

  if (error) {
   zend_throw_exception_ex(phar_ce_PharException, 0, "%s", error);
   efree(error);
  }
 }
}
