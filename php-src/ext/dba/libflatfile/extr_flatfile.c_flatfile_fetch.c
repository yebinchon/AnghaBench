
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fp; } ;
typedef TYPE_1__ flatfile ;
struct TYPE_9__ {scalar_t__ dsize; int * dptr; int member_1; int * member_0; } ;
typedef TYPE_2__ datum ;
typedef int buf ;


 scalar_t__ atoi (char*) ;
 scalar_t__ flatfile_findkey (TYPE_1__*,TYPE_2__) ;
 scalar_t__ php_stream_gets (int ,char*,int) ;
 scalar_t__ php_stream_read (int ,int *,scalar_t__) ;
 int * safe_emalloc (scalar_t__,int,int) ;

datum flatfile_fetch(flatfile *dba, datum key_datum) {
 datum value_datum = {((void*)0), 0};
 char buf[16];

 if (flatfile_findkey(dba, key_datum)) {
  if (php_stream_gets(dba->fp, buf, sizeof(buf))) {
   value_datum.dsize = atoi(buf);
   value_datum.dptr = safe_emalloc(value_datum.dsize, 1, 1);
   value_datum.dsize = php_stream_read(dba->fp, value_datum.dptr, value_datum.dsize);
  } else {
   value_datum.dptr = ((void*)0);
   value_datum.dsize = 0;
  }
 }
 return value_datum;
}
