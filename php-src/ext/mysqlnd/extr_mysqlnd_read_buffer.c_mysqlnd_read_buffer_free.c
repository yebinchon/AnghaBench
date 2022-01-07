
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; } ;
typedef TYPE_1__ MYSQLND_READ_BUFFER ;


 int DBG_ENTER (char*) ;
 int DBG_VOID_RETURN ;
 int mnd_efree (TYPE_1__*) ;

__attribute__((used)) static void
mysqlnd_read_buffer_free(MYSQLND_READ_BUFFER ** buffer)
{
 DBG_ENTER("mysqlnd_read_buffer_free");
 if (*buffer) {
  mnd_efree((*buffer)->data);
  mnd_efree(*buffer);
  *buffer = ((void*)0);
 }
 DBG_VOID_RETURN;
}
