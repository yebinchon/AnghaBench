
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_SYSTEM_ERROR ;
 int ERROR ;
 int LC_COLLATE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg_internal (char*,int ) ;
 int setlocale (int ,int *) ;
 int strxfrm (char*,char*,int) ;

void
check_strxfrm_bug(void)
{
 char buf[32];
 const int canary = 0x7F;
 bool ok = 1;
 buf[7] = canary;
 (void) strxfrm(buf, "ab", 7);
 if (buf[7] != canary)
  ok = 0;
 buf[1] = canary;
 (void) strxfrm(buf, "a", 1);
 if (buf[1] != canary)
  ok = 0;

 if (!ok)
  ereport(ERROR,
    (errcode(ERRCODE_SYSTEM_ERROR),
     errmsg_internal("strxfrm(), in locale \"%s\", writes past the specified array length",
         setlocale(LC_COLLATE, ((void*)0))),
     errhint("Apply system library package updates.")));
}
