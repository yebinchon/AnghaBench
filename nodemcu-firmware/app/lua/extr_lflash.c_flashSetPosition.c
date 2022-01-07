
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int NODE_DBG (char*,int ) ;
 int curOffset ;
 char* flashPosition () ;

__attribute__((used)) static char *flashSetPosition(uint32_t offset){
  NODE_DBG("flashSetPosition(%04x)\n", offset);
  curOffset = offset;
  return flashPosition();
}
