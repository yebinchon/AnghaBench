
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ini_parser_cb_t ;


 int FAILURE ;
 int O_RDONLY ;
 int ZEND_INI_SCANNER_NORMAL ;
 int ZLOG_ERROR ;
 int ZLOG_SYSERROR ;
 int close (int) ;
 scalar_t__ fpm_conf_ini_parser ;
 int fpm_conf_ini_parser_include (char*,int*) ;
 int fpm_evaluate_full_path (char**,int *,int *,int ) ;
 int free (char*) ;
 char* ini_filename ;
 char* ini_include ;
 scalar_t__ ini_lineno ;
 int ini_recursion ;
 int open (char*,int ,int ) ;
 int read (int,char*,int) ;
 scalar_t__ realloc (char*,int) ;
 int zend_parse_ini_string (char*,int,int ,int ,int*) ;
 int zlog (int ,char*,...) ;

int fpm_conf_load_ini_file(char *filename)
{
 int error = 0;
 char *buf = ((void*)0), *newbuf = ((void*)0);
 int bufsize = 0;
 int fd, n;
 int nb_read = 1;
 char c = '*';

 int ret = 1;

 if (!filename || !filename[0]) {
  zlog(ZLOG_ERROR, "configuration filename is empty");
  return -1;
 }

 fd = open(filename, O_RDONLY, 0);
 if (fd < 0) {
  zlog(ZLOG_SYSERROR, "failed to open configuration file '%s'", filename);
  return -1;
 }

 if (ini_recursion++ > 4) {
  zlog(ZLOG_ERROR, "failed to include more than 5 files recusively");
  close(fd);
  return -1;
 }

 ini_lineno = 0;
 while (nb_read > 0) {
  int tmp;
  ini_lineno++;
  ini_filename = filename;
  for (n = 0; (nb_read = read(fd, &c, sizeof(char))) == sizeof(char) && c != '\n'; n++) {
   if (n == bufsize) {
    bufsize += 1024;
    newbuf = (char*) realloc(buf, sizeof(char) * (bufsize + 2));
    if (newbuf == ((void*)0)) {
     ini_recursion--;
     close(fd);
     free(buf);
     return -1;
    }
    buf = newbuf;
   }

   buf[n] = c;
  }
  if (n == 0) {
   continue;
  }

  buf[n++] = '\n';
  buf[n] = '\0';
  tmp = zend_parse_ini_string(buf, 1, ZEND_INI_SCANNER_NORMAL, (zend_ini_parser_cb_t)fpm_conf_ini_parser, &error);
  ini_filename = filename;
  if (error || tmp == FAILURE) {
   if (ini_include) free(ini_include);
   ini_recursion--;
   close(fd);
   free(buf);
   return -1;
  }
  if (ini_include) {
   char *tmp = ini_include;
   ini_include = ((void*)0);
   fpm_evaluate_full_path(&tmp, ((void*)0), ((void*)0), 0);
   fpm_conf_ini_parser_include(tmp, &error);
   if (error) {
    free(tmp);
    ini_recursion--;
    close(fd);
    free(buf);
    return -1;
   }
   free(tmp);
  }
 }
 free(buf);

 ini_recursion--;
 close(fd);
 return ret;
}
