
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int FMODE_APPEND ;
 int FMODE_BINMODE ;
 int FMODE_CREATE ;


 int FMODE_TRUNC ;

 int O_APPEND ;
 int O_BINARY ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;

__attribute__((used)) static int
mrb_io_flags_to_modenum(mrb_state *mrb, int flags)
{
  int modenum = 0;

  switch(flags & (130|128|129)) {
    case 130:
      modenum = O_RDONLY;
      break;
    case 128:
      modenum = O_WRONLY;
      break;
    case 129:
      modenum = O_RDWR;
      break;
  }

  if (flags & FMODE_APPEND) {
    modenum |= O_APPEND;
  }
  if (flags & FMODE_TRUNC) {
    modenum |= O_TRUNC;
  }
  if (flags & FMODE_CREATE) {
    modenum |= O_CREAT;
  }






  return modenum;
}
