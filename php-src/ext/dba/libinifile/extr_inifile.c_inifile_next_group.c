
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_13__ {int group; } ;
struct TYPE_15__ {int * member_0; } ;
struct TYPE_14__ {int * member_1; int * member_0; } ;
struct TYPE_16__ {TYPE_11__ key; TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_3__ line_type ;
struct TYPE_17__ {int group; } ;
typedef TYPE_4__ key_type ;
struct TYPE_18__ {int fp; } ;
typedef TYPE_5__ inifile ;


 int FAILURE ;
 int SUCCESS ;
 int estrdup (int ) ;
 int inifile_key_cmp (TYPE_11__*,TYPE_4__ const*) ;
 int inifile_line_free (TYPE_3__*) ;
 scalar_t__ inifile_read (TYPE_5__*,TYPE_3__*) ;
 size_t php_stream_tell (int ) ;

__attribute__((used)) static int inifile_next_group(inifile *dba, const key_type *key, size_t *pos_grp_start)
{
 int ret = FAILURE;
 line_type ln = {{((void*)0),((void*)0)},{((void*)0)}};

 *pos_grp_start = php_stream_tell(dba->fp);
 ln.key.group = estrdup(key->group);
 while(inifile_read(dba, &ln)) {
  if (inifile_key_cmp(&ln.key, key) == 2) {
   ret = SUCCESS;
   break;
  }
  *pos_grp_start = php_stream_tell(dba->fp);
 }
 inifile_line_free(&ln);
 return ret;
}
