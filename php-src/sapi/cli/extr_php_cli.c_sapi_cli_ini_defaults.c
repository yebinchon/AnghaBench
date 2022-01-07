
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int HashTable ;


 int INI_DEFAULT (char*,char*) ;

__attribute__((used)) static void sapi_cli_ini_defaults(HashTable *configuration_hash)
{
 zval tmp;
 INI_DEFAULT("report_zend_debug", "0");
 INI_DEFAULT("display_errors", "1");
}
