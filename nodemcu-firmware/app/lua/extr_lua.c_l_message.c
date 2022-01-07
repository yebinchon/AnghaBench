
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c_stderr ;
 int fflush (int ) ;
 int fprintf (int ,char*,char const*) ;
 int luai_writestringerror (char*,char const*) ;

__attribute__((used)) static void l_message (const char *pname, const char *msg) {





  if (pname) luai_writestringerror("%s: ", pname);
  luai_writestringerror("%s\n", msg);

}
