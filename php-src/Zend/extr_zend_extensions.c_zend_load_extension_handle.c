
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zend_extension_api_no; char* build_id; } ;
typedef TYPE_1__ zend_extension_version_info ;
struct TYPE_5__ {scalar_t__ (* api_no_check ) (scalar_t__) ;char* name; char* author; char* URL; scalar_t__ (* build_id_check ) (char*) ;} ;
typedef TYPE_2__ zend_extension ;
typedef int DL_HANDLE ;


 scalar_t__ DL_FETCH_SYMBOL (int ,char*) ;
 int DL_UNLOAD (int ) ;
 int FAILURE ;
 scalar_t__ SUCCESS ;
 scalar_t__ ZEND_EXTENSION_API_NO ;
 char* ZEND_EXTENSION_BUILD_ID ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ stub1 (scalar_t__) ;
 scalar_t__ stub2 (char*) ;
 scalar_t__ zend_get_extension (char*) ;
 int zend_register_extension (TYPE_2__*,int ) ;

int zend_load_extension_handle(DL_HANDLE handle, const char *path)
{
 fprintf(stderr, "Extensions are not supported on this platform.\n");




 return FAILURE;

}
