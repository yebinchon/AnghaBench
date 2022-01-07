
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct termios {int c_cflag; int c_iflag; scalar_t__* c_cc; scalar_t__ c_oflag; scalar_t__ c_lflag; int member_0; } ;
struct TYPE_5__ {scalar_t__ WriteTotalTimeoutConstant; scalar_t__ WriteTotalTimeoutMultiplier; scalar_t__ ReadTotalTimeoutConstant; scalar_t__ ReadTotalTimeoutMultiplier; scalar_t__ ReadIntervalTimeout; } ;
struct gport {char* name; scalar_t__ hdl; int fd; void* wait_running; void* writing; TYPE_2__ timeouts; } ;
struct TYPE_4__ {int ByteSize; void* fOutX; void* fInX; void* fOutxDsrFlow; int fDtrControl; void* fOutxCtsFlow; int fRtsControl; int StopBits; int Parity; int BaudRate; void* fAbortOnError; void* fNull; void* fErrorChar; void* fDsrSensitivity; int fBinary; } ;
typedef int LPTSTR ;
typedef int DWORD ;
typedef TYPE_1__ DCB ;
typedef int COMSTAT ;


 int B115200 ;
 int CBR_115200 ;
 int CLOCAL ;
 int CREAD ;
 int CRTSCTS ;
 int CS8 ;
 int CSIZE ;
 int CSTOPB ;
 scalar_t__ ClearCommError (scalar_t__,int *,int *) ;
 scalar_t__ CreateFile (int ,int,int ,int ,int ,int,int ) ;
 int DTR_CONTROL_DISABLE ;
 int EV_ERR ;
 int EV_RXCHAR ;
 void* FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_FLAG_OVERLAPPED ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int IGNBRK ;
 int INIT_OVERLAPPED (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int NOPARITY ;
 int ONESTOPBIT ;
 int OPEN_EXISTING ;
 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int PARENB ;
 int PARODD ;
 int RTS_CONTROL_DISABLE ;
 scalar_t__ SetCommMask (scalar_t__,int) ;
 int SetCommState (scalar_t__,TYPE_1__*) ;
 scalar_t__ SetCommTimeouts (scalar_t__,TYPE_2__*) ;
 int TCSANOW ;
 int TRUE ;
 size_t VMIN ;
 size_t VTIME ;
 int cfsetispeed (struct termios*,int ) ;
 int cfsetospeed (struct termios*,int ) ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 int r_sandbox_open (char*,int,int ) ;
 int r_sys_conv_utf8_to_win (char*) ;
 int read_ovl ;
 int restart_wait (struct gport*) ;
 int sp_close (struct gport*) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 scalar_t__ tcsetattr (int ,int ,struct termios*) ;
 int wait_ovl ;
 int write_ovl ;

__attribute__((used)) static int sp_open (struct gport *port) {
 struct termios tty = {0};

 if ((port->fd = r_sandbox_open (port->name, O_NONBLOCK | O_NOCTTY | O_RDWR, 0)) < 0) {
  return -1;
 }

 if (tcgetattr (port->fd, &tty) != 0) {
  sp_close (port);
  return -1;
 }

 cfsetospeed (&tty, B115200);
 cfsetispeed (&tty, B115200);

 tty.c_cflag = (tty.c_cflag & ~CSIZE) | CS8;
 tty.c_iflag &= ~IGNBRK;
 tty.c_lflag = 0;
 tty.c_oflag = 0;
 tty.c_cc[VMIN] = 0;
 tty.c_cc[VTIME] = 0;
 tty.c_iflag &= ~(IXON | IXOFF | IXANY);

 tty.c_cflag |= (CLOCAL | CREAD);
 tty.c_cflag &= ~(PARENB | PARODD);
 tty.c_cflag &= ~CSTOPB;



 tty.c_cflag &= ~020000000000;


 if (tcsetattr (port->fd, TCSANOW, &tty) != 0) {
  return -1;
 }

 return 0;

}
