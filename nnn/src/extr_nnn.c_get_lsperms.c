
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int S_ISGID ;
 int S_ISUID ;
 int S_ISVTX ;
 char get_fileind (int) ;
 int xstrlcpy (char*,char const* const,int) ;

__attribute__((used)) static char *get_lsperms(mode_t mode)
{
 static const char * const rwx[] = {"---", "--x", "-w-", "-wx", "r--", "r-x", "rw-", "rwx"};
 static char bits[11] = {'\0'};

 bits[0] = get_fileind(mode);
 xstrlcpy(&bits[1], rwx[(mode >> 6) & 7], 4);
 xstrlcpy(&bits[4], rwx[(mode >> 3) & 7], 4);
 xstrlcpy(&bits[7], rwx[(mode & 7)], 4);

 if (mode & S_ISUID)
  bits[3] = (mode & 0100) ? 's' : 'S';
 if (mode & S_ISGID)
  bits[6] = (mode & 0010) ? 's' : 'l';
 if (mode & S_ISVTX)
  bits[9] = (mode & 0001) ? 't' : 'T';

 return bits;
}
