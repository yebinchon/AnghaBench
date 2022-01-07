
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_fs_fns ;


 int FF_VOLUMES ;
 int TRUE ;
 int is_current_drive ;
 int myfatfs_fs_fns ;
 int strcpy (char*,int ) ;
 char* strdup (char const*) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;
 int * volstr ;

vfs_fs_fns *myfatfs_realm( const char *inname, char **outname, int set_current_drive )
{
  if (inname[0] == '/') {
    char *oname;


    for (int i = 0; i < FF_VOLUMES; i++) {
      size_t volstr_len = strlen( volstr[i] );
      if (0 == strncmp( &(inname[1]), volstr[i], volstr_len )) {
        oname = strdup( inname );
        strcpy( oname, volstr[i] );
        oname[volstr_len] = ':';
        *outname = oname;

        if (set_current_drive) is_current_drive = TRUE;
        return &myfatfs_fs_fns;
      }
    }
  } else {

    if (is_current_drive) {
      *outname = strdup( inname );
      return &myfatfs_fs_fns;
    }
  }

  if (set_current_drive) is_current_drive = 0;
  return ((void*)0);
}
