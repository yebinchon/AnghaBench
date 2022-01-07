
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int ERRCODE_CONFIG_FILE_ERROR ;
 int HbaFileName ;
 int LOG ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcontext (char*,int,int ) ;
 int errmsg (char*,char const*,int,char const*,int) ;
 int list_length (int *) ;

__attribute__((used)) static bool
verify_option_list_length(List *options, const char *optionname, List *masters, const char *mastername, int line_num)
{
 if (list_length(options) == 0 ||
  list_length(options) == 1 ||
  list_length(options) == list_length(masters))
  return 1;

 ereport(LOG,
   (errcode(ERRCODE_CONFIG_FILE_ERROR),
    errmsg("the number of %s (%d) must be 1 or the same as the number of %s (%d)",
     optionname,
     list_length(options),
     mastername,
     list_length(masters)
     ),
    errcontext("line %d of configuration file \"%s\"",
      line_num, HbaFileName)));
 return 0;
}
