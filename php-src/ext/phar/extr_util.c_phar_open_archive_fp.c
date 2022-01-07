
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fname; } ;
typedef TYPE_1__ phar_archive_data ;


 int FAILURE ;
 int IGNORE_URL ;
 int STREAM_MUST_SEEK ;
 int SUCCESS ;
 scalar_t__ phar_get_pharfp (TYPE_1__*) ;
 int phar_set_pharfp (TYPE_1__*,int ) ;
 scalar_t__ php_check_open_basedir (int ) ;
 int php_stream_open_wrapper (int ,char*,int,int *) ;

int phar_open_archive_fp(phar_archive_data *phar)
{
 if (phar_get_pharfp(phar)) {
  return SUCCESS;
 }

 if (php_check_open_basedir(phar->fname)) {
  return FAILURE;
 }

 phar_set_pharfp(phar, php_stream_open_wrapper(phar->fname, "rb", IGNORE_URL|STREAM_MUST_SEEK|0, ((void*)0)));

 if (!phar_get_pharfp(phar)) {
  return FAILURE;
 }

 return SUCCESS;
}
