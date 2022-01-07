
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int data_directory_mode ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
show_data_directory_mode(void)
{
 static char buf[12];

 snprintf(buf, sizeof(buf), "%04o", data_directory_mode);
 return buf;
}
