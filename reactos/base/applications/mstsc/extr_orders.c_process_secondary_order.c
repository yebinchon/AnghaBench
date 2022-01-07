
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint16 ;
typedef int sint16 ;
struct TYPE_11__ {int* p; } ;
typedef TYPE_1__* STREAM ;


 int False ;







 int True ;
 int in_uint16_le (TYPE_1__*,scalar_t__) ;
 int in_uint8 (TYPE_1__*,int) ;
 int process_bmpcache (TYPE_1__*) ;
 int process_bmpcache2 (TYPE_1__*,scalar_t__,int ) ;
 int process_brushcache (TYPE_1__*,scalar_t__) ;
 int process_colcache (TYPE_1__*) ;
 int process_fontcache (TYPE_1__*) ;
 int process_raw_bmpcache (TYPE_1__*) ;
 int unimpl (char*,int) ;

__attribute__((used)) static void
process_secondary_order(STREAM s)
{



 uint16 length;
 uint16 flags;
 uint8 type;
 uint8 *next_order;

 in_uint16_le(s, length);
 in_uint16_le(s, flags);
 in_uint8(s, type);

 next_order = s->p + (sint16) length + 7;

 switch (type)
 {
  case 129:
   process_raw_bmpcache(s);
   break;

  case 131:
   process_colcache(s);
   break;

  case 134:
   process_bmpcache(s);
   break;

  case 130:
   process_fontcache(s);
   break;

  case 128:
   process_bmpcache2(s, flags, False);
   break;

  case 133:
   process_bmpcache2(s, flags, True);
   break;

  case 132:
   process_brushcache(s, flags);
   break;

  default:
   unimpl("secondary order %d\n", type);
 }

 s->p = next_order;
}
