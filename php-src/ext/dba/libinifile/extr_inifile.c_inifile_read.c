
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {void* value; } ;
struct TYPE_11__ {char* name; void* group; } ;
struct TYPE_8__ {void* pos; TYPE_3__ val; TYPE_7__ key; } ;
typedef TYPE_1__ line_type ;
struct TYPE_9__ {int fp; } ;
typedef TYPE_2__ inifile ;


 int efree (char*) ;
 void* estrdup (char*) ;
 void* etrim (char*) ;
 int inifile_key_free (TYPE_7__*) ;
 int inifile_line_free (TYPE_1__*) ;
 int inifile_val_free (TYPE_3__*) ;
 char* php_stream_gets (int ,int *,int ) ;
 void* php_stream_tell (int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int inifile_read(inifile *dba, line_type *ln) {
 char *fline;
 char *pos;

 inifile_val_free(&ln->val);
 while ((fline = php_stream_gets(dba->fp, ((void*)0), 0)) != ((void*)0)) {
  if (fline) {
   if (fline[0] == '[') {



    pos = strchr(fline+1, ']');
    if (pos) {
     *pos = '\0';
     inifile_key_free(&ln->key);
     ln->key.group = etrim(fline+1);
     ln->key.name = estrdup("");
     ln->pos = php_stream_tell(dba->fp);
     efree(fline);
     return 1;
    } else {
     efree(fline);
     continue;
    }
   } else {
    pos = strchr(fline, '=');
    if (pos) {
     *pos = '\0';

     if (!ln->key.group) {
      ln->key.group = estrdup("");
     }
     if (ln->key.name) {
      efree(ln->key.name);
     }
     ln->key.name = etrim(fline);
     ln->val.value = etrim(pos+1);
     ln->pos = php_stream_tell(dba->fp);
     efree(fline);
     return 1;
    } else {



      efree(fline);
      continue;
    }
   }
  }
 }
 inifile_line_free(ln);
 return 0;
}
