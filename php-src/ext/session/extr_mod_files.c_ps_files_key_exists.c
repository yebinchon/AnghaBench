
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_stat_t ;
typedef int ps_files ;
typedef int buf ;


 int FAILURE ;
 int MAXPATHLEN ;
 int SUCCESS ;
 scalar_t__ VCWD_STAT (char*,int *) ;
 int ps_files_path_create (char*,int,int *,char const*) ;

__attribute__((used)) static int ps_files_key_exists(ps_files *data, const char *key)
{
 char buf[MAXPATHLEN];
 zend_stat_t sbuf;

 if (!key || !ps_files_path_create(buf, sizeof(buf), data, key)) {
  return FAILURE;
 }
 if (VCWD_STAT(buf, &sbuf)) {
  return FAILURE;
 }
 return SUCCESS;
}
