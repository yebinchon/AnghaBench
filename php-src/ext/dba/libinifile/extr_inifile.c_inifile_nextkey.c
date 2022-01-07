
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* group; scalar_t__ name; } ;
struct TYPE_12__ {int * member_0; } ;
struct TYPE_11__ {int * member_1; int * member_0; } ;
struct TYPE_13__ {TYPE_1__ key; int pos; TYPE_3__ member_1; TYPE_2__ member_0; } ;
typedef TYPE_4__ line_type ;
struct TYPE_14__ {TYPE_4__ curr; int fp; } ;
typedef TYPE_5__ inifile ;


 int SEEK_SET ;
 char* estrdup (char*) ;
 int inifile_line_free (TYPE_4__*) ;
 int inifile_read (TYPE_5__*,TYPE_4__*) ;
 int php_stream_seek (int ,int ,int ) ;

int inifile_nextkey(inifile *dba) {
 line_type ln = {{((void*)0),((void*)0)},{((void*)0)}};


 php_stream_seek(dba->fp, dba->curr.pos, SEEK_SET);
 ln.key.group = estrdup(dba->curr.key.group ? dba->curr.key.group : "");
 inifile_read(dba, &ln);
 inifile_line_free(&dba->curr);
 dba->curr = ln;
 return ln.key.group || ln.key.name;
}
