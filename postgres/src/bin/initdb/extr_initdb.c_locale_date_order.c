
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testtime ;
struct tm {int tm_mday; int tm_mon; int tm_year; } ;
typedef int buf ;


 int DATEORDER_DMY ;
 int DATEORDER_MDY ;
 int DATEORDER_YMD ;
 int LC_TIME ;
 int free (char*) ;
 int memset (struct tm*,int ,int) ;
 size_t my_strftime (char*,int,char*,struct tm*) ;
 char* pg_strdup (char*) ;
 char* setlocale (int ,char const*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int
locale_date_order(const char *locale)
{
 struct tm testtime;
 char buf[128];
 char *posD;
 char *posM;
 char *posY;
 char *save;
 size_t res;
 int result;

 result = DATEORDER_MDY;

 save = setlocale(LC_TIME, ((void*)0));
 if (!save)
  return result;
 save = pg_strdup(save);

 setlocale(LC_TIME, locale);

 memset(&testtime, 0, sizeof(testtime));
 testtime.tm_mday = 22;
 testtime.tm_mon = 10;
 testtime.tm_year = 133;

 res = my_strftime(buf, sizeof(buf), "%x", &testtime);

 setlocale(LC_TIME, save);
 free(save);

 if (res == 0)
  return result;

 posM = strstr(buf, "11");
 posD = strstr(buf, "22");
 posY = strstr(buf, "33");

 if (!posM || !posD || !posY)
  return result;

 if (posY < posM && posM < posD)
  result = DATEORDER_YMD;
 else if (posD < posM)
  result = DATEORDER_DMY;
 else
  result = DATEORDER_MDY;

 return result;
}
