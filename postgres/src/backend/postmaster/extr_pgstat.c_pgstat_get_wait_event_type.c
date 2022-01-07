
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
const char *
pgstat_get_wait_event_type(uint32 wait_event_info)
{
 uint32 classId;
 const char *event_type;


 if (wait_event_info == 0)
  return ((void*)0);

 classId = wait_event_info & 0xFF000000;

 switch (classId)
 {
  case 129:
   event_type = "LWLock";
   break;
  case 130:
   event_type = "Lock";
   break;
  case 135:
   event_type = "BufferPin";
   break;
  case 136:
   event_type = "Activity";
   break;
  case 134:
   event_type = "Client";
   break;
  case 133:
   event_type = "Extension";
   break;
  case 131:
   event_type = "IPC";
   break;
  case 128:
   event_type = "Timeout";
   break;
  case 132:
   event_type = "IO";
   break;
  default:
   event_type = "???";
   break;
 }

 return event_type;
}
