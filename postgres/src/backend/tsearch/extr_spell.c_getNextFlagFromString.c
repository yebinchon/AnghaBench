
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int flagMode; } ;
typedef TYPE_1__ IspellDict ;


 int COPYCHAR (char*,char*) ;
 int ERANGE ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int FLAGNUM_MAXSIZE ;



 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int errno ;
 int pg_mblen (char*) ;
 int sprintf (char*,char*,int) ;
 int strtol (char*,char**,int) ;
 int t_isdigit (char*) ;
 int t_iseq (char*,char) ;
 int t_isspace (char*) ;

__attribute__((used)) static void
getNextFlagFromString(IspellDict *Conf, char **sflagset, char *sflag)
{
 int32 s;
 char *next,
      *sbuf = *sflagset;
 int maxstep;
 bool stop = 0;
 bool met_comma = 0;

 maxstep = (Conf->flagMode == 129) ? 2 : 1;

 while (**sflagset)
 {
  switch (Conf->flagMode)
  {
   case 129:
   case 130:
    COPYCHAR(sflag, *sflagset);
    sflag += pg_mblen(*sflagset);


    *sflagset += pg_mblen(*sflagset);


    maxstep--;
    stop = (maxstep == 0);
    break;
   case 128:
    s = strtol(*sflagset, &next, 10);
    if (*sflagset == next || errno == ERANGE)
     ereport(ERROR,
       (errcode(ERRCODE_CONFIG_FILE_ERROR),
        errmsg("invalid affix flag \"%s\"", *sflagset)));
    if (s < 0 || s > FLAGNUM_MAXSIZE)
     ereport(ERROR,
       (errcode(ERRCODE_CONFIG_FILE_ERROR),
        errmsg("affix flag \"%s\" is out of range",
         *sflagset)));
    sflag += sprintf(sflag, "%0d", s);


    *sflagset = next;
    while (**sflagset)
    {
     if (t_isdigit(*sflagset))
     {
      if (!met_comma)
       ereport(ERROR,
         (errcode(ERRCODE_CONFIG_FILE_ERROR),
          errmsg("invalid affix flag \"%s\"",
           *sflagset)));
      break;
     }
     else if (t_iseq(*sflagset, ','))
     {
      if (met_comma)
       ereport(ERROR,
         (errcode(ERRCODE_CONFIG_FILE_ERROR),
          errmsg("invalid affix flag \"%s\"",
           *sflagset)));
      met_comma = 1;
     }
     else if (!t_isspace(*sflagset))
     {
      ereport(ERROR,
        (errcode(ERRCODE_CONFIG_FILE_ERROR),
         errmsg("invalid character in affix flag \"%s\"",
          *sflagset)));
     }

     *sflagset += pg_mblen(*sflagset);
    }
    stop = 1;
    break;
   default:
    elog(ERROR, "unrecognized type of Conf->flagMode: %d",
      Conf->flagMode);
  }

  if (stop)
   break;
 }

 if (Conf->flagMode == 129 && maxstep > 0)
  ereport(ERROR,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("invalid affix flag \"%s\" with \"long\" flag value",
      sbuf)));

 *sflag = '\0';
}
