
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;


 int FD_CLR (int ,int *) ;
 int FD_SET (int ,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int FIONREAD ;
 int STDIN_FILENO ;
 int errno ;
 int error_log (char*,...) ;
 int fflush (int ) ;
 int ioctl (int ,int ,int*) ;
 scalar_t__ isatty (int ) ;
 unsigned char* malloc (int) ;
 int printf (char*,char*) ;
 int read (int ,unsigned char*,int) ;
 int select (int ,int *,int *,int *,void*) ;
 int stdout ;

int input_get(unsigned char** dest, char *prompt)
{
 int r, input_len;
 fd_set input_stream;
 struct timeval timeout;
 void *timeout_p;

 FD_ZERO(&input_stream);
 input_len = 0;

 timeout.tv_sec = 10;
 timeout.tv_usec = 0;

 if (isatty(STDIN_FILENO))
 {
  timeout_p = ((void*)0);
  if (prompt != ((void*)0))
  {
   printf("%s", prompt);
   fflush(stdout);
  }
 }
 else
 {
  timeout_p = &timeout;
 }

 FD_SET(STDIN_FILENO, &input_stream);
 r = select(FD_SETSIZE, &input_stream, ((void*)0), ((void*)0), timeout_p);
 if (r < 0)
 {
  error_log("Error while waiting for input data. Errno: %i", errno);
  return -1;
 }
 if (r > 0)
 {
  r = ioctl(STDIN_FILENO, FIONREAD, &input_len);
  if (r < 0)
  {
   error_log("Could not determine length of input. Errno: %i", errno);
   return -1;
  }
  if (input_len > 0)
  {
   *dest = malloc(input_len);
   if (*dest == ((void*)0))
   {
    error_log("Memory allocation error.");
    return -1;
   }
   r = read(STDIN_FILENO, *dest, input_len);
   if (r < 0)
   {
    error_log("Input read error. Errno: %i", errno);
    return -1;
   }
  }
 }

 FD_CLR(STDIN_FILENO, &input_stream);

 return input_len;
}
