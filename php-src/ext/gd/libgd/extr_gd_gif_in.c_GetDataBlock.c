
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;


 int GD_NOTICE ;
 int GetDataBlock_ (int *,unsigned char*,int*) ;
 scalar_t__ VERBOSE ;
 int efree (char*) ;
 char* estrdup (char*) ;
 int gd_error_ex (int ,char*,int,char*) ;
 char* safe_emalloc (int,int,int) ;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static int
GetDataBlock(gdIOCtx *fd, unsigned char *buf, int *ZeroDataBlockP)
{
 int rv;
 int i;

 rv = GetDataBlock_(fd,buf, ZeroDataBlockP);
 if (VERBOSE) {
  char *tmp = ((void*)0);
  if (rv > 0) {
   tmp = safe_emalloc(3 * rv, sizeof(char), 1);
   for (i=0;i<rv;i++) {
    sprintf(&tmp[3*sizeof(char)*i], " %02x", buf[i]);
   }
  } else {
   tmp = estrdup("");
  }
  gd_error_ex(GD_NOTICE, "[GetDataBlock returning %d: %s]", rv, tmp);
  efree(tmp);
 }
 return(rv);
}
