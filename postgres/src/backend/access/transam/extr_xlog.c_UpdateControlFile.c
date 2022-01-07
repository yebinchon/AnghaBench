
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ControlFile ;
 int DataDir ;
 int update_controlfile (int ,int ,int) ;

void
UpdateControlFile(void)
{
 update_controlfile(DataDir, ControlFile, 1);
}
