
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_user_name (char**) ;
 int geteuid () ;
 int pg_fatal (char*,char*) ;
 char* pg_strdup (char const*) ;

int
get_user_info(char **user_name_p)
{
 int user_id;
 const char *user_name;
 char *errstr;


 user_id = geteuid();




 user_name = get_user_name(&errstr);
 if (!user_name)
  pg_fatal("%s\n", errstr);


 *user_name_p = pg_strdup(user_name);

 return user_id;
}
