
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out_buf ;
 int out_pos ;
 int ui_write (int ,int) ;

void
out_flush()
{
    int len;

    if (out_pos != 0)
    {

 len = out_pos;
 out_pos = 0;
 ui_write(out_buf, len);
    }
}
