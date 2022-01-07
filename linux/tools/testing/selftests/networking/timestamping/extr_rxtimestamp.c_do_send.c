
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int error (int,int ,char*) ;
 int free (char*) ;
 char* malloc (int ) ;
 int memset (char*,char,int ) ;
 int op_size ;
 int write (int,char*,int ) ;

void do_send(int src)
{
 int r;
 char *buf = malloc(op_size);

 memset(buf, 'z', op_size);
 r = write(src, buf, op_size);
 if (r < 0)
  error(1, errno, "Failed to sendmsg");

 free(buf);
}
