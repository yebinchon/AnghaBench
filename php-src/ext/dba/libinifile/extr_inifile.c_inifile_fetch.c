
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {char* value; } ;
typedef TYPE_3__ val_type ;
struct TYPE_17__ {char* group; scalar_t__ name; } ;
struct TYPE_13__ {int * member_0; } ;
struct TYPE_12__ {int * member_1; int * member_0; } ;
struct TYPE_15__ {TYPE_3__ val; void* pos; TYPE_9__ key; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_4__ line_type ;
typedef int key_type ;
struct TYPE_16__ {int fp; TYPE_4__ next; } ;
typedef TYPE_5__ inifile ;


 int SEEK_SET ;
 void* estrdup (char*) ;
 int inifile_key_cmp (TYPE_9__*,int const*) ;
 int inifile_line_free (TYPE_4__*) ;
 scalar_t__ inifile_read (TYPE_5__*,TYPE_4__*) ;
 int php_stream_rewind (int ) ;
 int php_stream_seek (int ,void*,int ) ;
 void* php_stream_tell (int ) ;

val_type inifile_fetch(inifile *dba, const key_type *key, int skip) {
 line_type ln = {{((void*)0),((void*)0)},{((void*)0)}};
 val_type val;
 int res, grp_eq = 0;

 if (skip == -1 && dba->next.key.group && dba->next.key.name && !inifile_key_cmp(&dba->next.key, key)) {

  php_stream_seek(dba->fp, dba->next.pos, SEEK_SET);
  ln.key.group = estrdup(dba->next.key.group);
 } else {


  php_stream_rewind(dba->fp);
  inifile_line_free(&dba->next);
 }
 if (skip == -1) {
  skip = 0;
 }
 while(inifile_read(dba, &ln)) {
  if (!(res=inifile_key_cmp(&ln.key, key))) {
   if (!skip) {
    val.value = estrdup(ln.val.value ? ln.val.value : "");

    inifile_line_free(&dba->next);
    dba->next = ln;
    dba->next.pos = php_stream_tell(dba->fp);
    return val;
   }
   skip--;
  } else if (res == 1) {
   grp_eq = 1;
  } else if (grp_eq) {

   break;
  }
 }
 inifile_line_free(&ln);
 dba->next.pos = php_stream_tell(dba->fp);
 return ln.val;
}
