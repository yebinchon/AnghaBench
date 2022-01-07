
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF_IMODULE ;


 int ASN1_STRING_TABLE_cleanup () ;

__attribute__((used)) static void stbl_module_finish(CONF_IMODULE *md)
{
    ASN1_STRING_TABLE_cleanup();
}
