
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *sock_state_str(int state)
{
 switch (state) {
 case 132:
  return "UNCONNECTED";
 case 128:
  return "CONNECTING";
 case 130:
  return "CONNECTED";
 case 131:
  return "DISCONNECTING";
 case 129:
  return "LISTEN";
 default:
  return "INVALID STATE";
 }
}
