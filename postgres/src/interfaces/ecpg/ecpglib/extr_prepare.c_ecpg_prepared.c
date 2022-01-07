
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prepared_statement {TYPE_1__* stmt; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {char* command; } ;


 struct prepared_statement* ecpg_find_prepared_statement (char const*,struct connection*,int *) ;

char *
ecpg_prepared(const char *name, struct connection *con)
{
 struct prepared_statement *this;

 this = ecpg_find_prepared_statement(name, con, ((void*)0));
 return this ? this->stmt->command : ((void*)0);
}
