
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int line; int len; int line_position; int firstline; scalar_t__ L; } ;


 int NODE_DBG (char*,int ,int ,int ,int ,int ) ;
 int dojob (TYPE_1__*) ;
 TYPE_1__ gLoad ;
 scalar_t__ readline (TYPE_1__*) ;
 int strlen (int ) ;

void lua_handle_input (bool force)
{
  while (gLoad.L && (force || readline (&gLoad))) {
    NODE_DBG("Handle Input: first=%u, pos=%u, len=%u, actual=%u, line=%s\n", gLoad.firstline,
              gLoad.line_position, gLoad.len, strlen(gLoad.line), gLoad.line);
    dojob (&gLoad);
    force = 0;
  }
}
