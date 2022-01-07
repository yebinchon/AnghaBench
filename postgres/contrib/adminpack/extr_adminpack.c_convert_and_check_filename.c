
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int DEFAULT_ROLE_WRITE_SERVER_FILES ;
 char* DataDir ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERROR ;
 int GetUserId () ;
 char* Log_directory ;
 int canonicalize_path (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ is_absolute_path (char*) ;
 scalar_t__ is_member_of_role (int ,int ) ;
 scalar_t__ path_contains_parent_reference (char*) ;
 int path_is_prefix_of_path (char*,char*) ;
 int path_is_relative_and_below_cwd (char*) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static char *
convert_and_check_filename(text *arg, bool logAllowed)
{
 char *filename = text_to_cstring(arg);

 canonicalize_path(filename);






 if (is_member_of_role(GetUserId(), DEFAULT_ROLE_WRITE_SERVER_FILES))
  return filename;


 if (is_absolute_path(filename))
 {

  if (path_contains_parent_reference(filename))
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      (errmsg("reference to parent directory (\"..\") not allowed"))));





  if (!path_is_prefix_of_path(DataDir, filename) &&
   (!logAllowed || !is_absolute_path(Log_directory) ||
    !path_is_prefix_of_path(Log_directory, filename)))
   ereport(ERROR,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      (errmsg("absolute path not allowed"))));
 }
 else if (!path_is_relative_and_below_cwd(filename))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     (errmsg("path must be in or below the current directory"))));

 return filename;
}
