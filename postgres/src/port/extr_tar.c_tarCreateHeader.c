
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int time_t ;
typedef int pgoff_t ;
typedef int mode_t ;
typedef int gid_t ;
typedef enum tarError { ____Placeholder_tarError } tarError ;


 int Min (int,int) ;
 scalar_t__ S_ISDIR (int) ;
 int TAR_NAME_TOO_LONG ;
 int TAR_OK ;
 int TAR_SYMLINK_TOO_LONG ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int print_tar_number (char*,int,int) ;
 int strcpy (char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int tarChecksum (char*) ;

enum tarError
tarCreateHeader(char *h, const char *filename, const char *linktarget,
    pgoff_t size, mode_t mode, uid_t uid, gid_t gid, time_t mtime)
{
 if (strlen(filename) > 99)
  return TAR_NAME_TOO_LONG;

 if (linktarget && strlen(linktarget) > 99)
  return TAR_SYMLINK_TOO_LONG;

 memset(h, 0, 512);


 strlcpy(&h[0], filename, 100);
 if (linktarget != ((void*)0) || S_ISDIR(mode))
 {





  int flen = strlen(filename);

  flen = Min(flen, 99);
  h[flen] = '/';
  h[flen + 1] = '\0';
 }


 print_tar_number(&h[100], 8, (mode & 07777));


 print_tar_number(&h[108], 8, uid);


 print_tar_number(&h[116], 8, gid);


 if (linktarget != ((void*)0) || S_ISDIR(mode))

  print_tar_number(&h[124], 12, 0);
 else
  print_tar_number(&h[124], 12, size);


 print_tar_number(&h[136], 12, mtime);



 if (linktarget != ((void*)0))
 {

  h[156] = '2';

  strlcpy(&h[157], linktarget, 100);
 }
 else if (S_ISDIR(mode))
 {

  h[156] = '5';
 }
 else
 {

  h[156] = '0';
 }


 strcpy(&h[257], "ustar");


 memcpy(&h[263], "00", 2);



 strlcpy(&h[265], "postgres", 32);



 strlcpy(&h[297], "postgres", 32);


 print_tar_number(&h[329], 8, 0);


 print_tar_number(&h[337], 8, 0);




 print_tar_number(&h[148], 8, tarChecksum(h));

 return TAR_OK;
}
