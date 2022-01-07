
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* gss; } ;
typedef TYPE_1__ Port ;


 int free (TYPE_1__*) ;
 int secure_close (TYPE_1__*) ;

__attribute__((used)) static void
ConnFree(Port *conn)
{



 if (conn->gss)
  free(conn->gss);
 free(conn);
}
