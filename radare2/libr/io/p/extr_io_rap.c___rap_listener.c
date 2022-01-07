
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;


 int RIORAP_IS_LISTEN (int *) ;
 scalar_t__ RIORAP_IS_VALID (int *) ;

__attribute__((used)) static int __rap_listener(RIODesc *fd) {
 return (RIORAP_IS_VALID (fd))? RIORAP_IS_LISTEN (fd): 0;
}
