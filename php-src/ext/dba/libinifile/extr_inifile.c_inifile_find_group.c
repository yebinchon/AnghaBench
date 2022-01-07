
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int * member_0; } ;
struct TYPE_12__ {int * member_1; int * member_0; } ;
struct TYPE_14__ {int key; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_3__ line_type ;
struct TYPE_15__ {scalar_t__ group; } ;
typedef TYPE_4__ key_type ;
struct TYPE_16__ {int fp; TYPE_3__ next; TYPE_3__ curr; } ;
typedef TYPE_5__ inifile ;


 int FAILURE ;
 int SEEK_SET ;
 int SUCCESS ;
 int inifile_key_cmp (int *,TYPE_4__ const*) ;
 int inifile_line_free (TYPE_3__*) ;
 scalar_t__ inifile_read (TYPE_5__*,TYPE_3__*) ;
 int php_stream_flush (int ) ;
 int php_stream_seek (int ,int ,int ) ;
 size_t php_stream_tell (int ) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int inifile_find_group(inifile *dba, const key_type *key, size_t *pos_grp_start)
{
 int ret = FAILURE;

 php_stream_flush(dba->fp);
 php_stream_seek(dba->fp, 0, SEEK_SET);
 inifile_line_free(&dba->curr);
 inifile_line_free(&dba->next);

 if (key->group && strlen(key->group)) {
  int res;
  line_type ln = {{((void*)0),((void*)0)},{((void*)0)}};

  res = 1;
  while(inifile_read(dba, &ln)) {
   if ((res=inifile_key_cmp(&ln.key, key)) < 2) {
    ret = SUCCESS;
    break;
   }
   *pos_grp_start = php_stream_tell(dba->fp);
  }
  inifile_line_free(&ln);
 } else {
  *pos_grp_start = 0;
  ret = SUCCESS;
 }
 if (ret == FAILURE) {
  *pos_grp_start = php_stream_tell(dba->fp);
 }
 return ret;
}
