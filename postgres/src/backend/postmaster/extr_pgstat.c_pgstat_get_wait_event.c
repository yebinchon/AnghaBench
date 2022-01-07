
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int uint16 ;
typedef int WaitEventTimeout ;
typedef int WaitEventIPC ;
typedef int WaitEventIO ;
typedef int WaitEventClient ;
typedef int WaitEventActivity ;


 char* GetLWLockIdentifier (int,int) ;
 char* GetLockNameFromTagType (int) ;
 char* pgstat_get_wait_activity (int ) ;
 char* pgstat_get_wait_client (int ) ;
 char* pgstat_get_wait_io (int ) ;
 char* pgstat_get_wait_ipc (int ) ;
 char* pgstat_get_wait_timeout (int ) ;

const char *
pgstat_get_wait_event(uint32 wait_event_info)
{
 uint32 classId;
 uint16 eventId;
 const char *event_name;


 if (wait_event_info == 0)
  return ((void*)0);

 classId = wait_event_info & 0xFF000000;
 eventId = wait_event_info & 0x0000FFFF;

 switch (classId)
 {
  case 129:
   event_name = GetLWLockIdentifier(classId, eventId);
   break;
  case 130:
   event_name = GetLockNameFromTagType(eventId);
   break;
  case 135:
   event_name = "BufferPin";
   break;
  case 136:
   {
    WaitEventActivity w = (WaitEventActivity) wait_event_info;

    event_name = pgstat_get_wait_activity(w);
    break;
   }
  case 134:
   {
    WaitEventClient w = (WaitEventClient) wait_event_info;

    event_name = pgstat_get_wait_client(w);
    break;
   }
  case 133:
   event_name = "Extension";
   break;
  case 131:
   {
    WaitEventIPC w = (WaitEventIPC) wait_event_info;

    event_name = pgstat_get_wait_ipc(w);
    break;
   }
  case 128:
   {
    WaitEventTimeout w = (WaitEventTimeout) wait_event_info;

    event_name = pgstat_get_wait_timeout(w);
    break;
   }
  case 132:
   {
    WaitEventIO w = (WaitEventIO) wait_event_info;

    event_name = pgstat_get_wait_io(w);
    break;
   }
  default:
   event_name = "unknown wait event";
   break;
 }

 return event_name;
}
