
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ofw_write (int ,char*,int ) ;
 int stdout_handle ;
 int strlen (char*) ;

void PpcOfwPutChar( int ch ) {
    char buf[3];
    if( ch == 0x0a ) { buf[0] = 0x0d; buf[1] = 0x0a; }
    else { buf[0] = ch; buf[1] = 0; }
    buf[2] = 0;
    ofw_write(stdout_handle, buf, strlen(buf));
}
