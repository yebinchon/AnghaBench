
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_11__ {int flags; int mcs_id; } ;
typedef TYPE_1__ VCHANNEL ;
struct TYPE_12__ {scalar_t__ end; scalar_t__ p; } ;
typedef TYPE_2__* STREAM ;


 int CHANNEL_CHUNK_LENGTH ;
 scalar_t__ CHANNEL_FLAG_FIRST ;
 scalar_t__ CHANNEL_FLAG_LAST ;
 scalar_t__ CHANNEL_FLAG_SHOW_PROTOCOL ;
 int CHANNEL_OPTION_SHOW_PROTOCOL ;
 int DEBUG_CHANNEL (char*) ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int SCARD_LOCK_CHANNEL ;
 int SEC_ENCRYPT ;
 int channel_hdr ;
 scalar_t__ g_encryption ;
 int out_uint32_le (TYPE_2__*,scalar_t__) ;
 int out_uint8p (TYPE_2__*,int *,scalar_t__) ;
 int s_mark_end (TYPE_2__*) ;
 int s_pop_layer (TYPE_2__*,int ) ;
 int scard_lock (int ) ;
 int scard_unlock (int ) ;
 TYPE_2__* sec_init (int ,int ) ;
 int sec_send_to_channel (TYPE_2__*,int ,int ) ;

void
channel_send(STREAM s, VCHANNEL * channel)
{
 uint32 length, flags;
 uint32 thislength, remaining;
 uint8 *data;






 s_pop_layer(s, channel_hdr);
 length = s->end - s->p - 8;

 DEBUG_CHANNEL(("channel_send, length = %d\n", length));

 thislength = MIN(length, CHANNEL_CHUNK_LENGTH);




 remaining = length - thislength;
 flags = (remaining == 0) ? CHANNEL_FLAG_FIRST | CHANNEL_FLAG_LAST : CHANNEL_FLAG_FIRST;
 if (channel->flags & CHANNEL_OPTION_SHOW_PROTOCOL)
  flags |= CHANNEL_FLAG_SHOW_PROTOCOL;

 out_uint32_le(s, length);
 out_uint32_le(s, flags);
 data = s->end = s->p + thislength;
 DEBUG_CHANNEL(("Sending %d bytes with FLAG_FIRST\n", thislength));
 sec_send_to_channel(s, g_encryption ? SEC_ENCRYPT : 0, channel->mcs_id);


 while (remaining > 0)
 {
  thislength = MIN(remaining, CHANNEL_CHUNK_LENGTH);
  remaining -= thislength;
  flags = (remaining == 0) ? CHANNEL_FLAG_LAST : 0;
  if (channel->flags & CHANNEL_OPTION_SHOW_PROTOCOL)
   flags |= CHANNEL_FLAG_SHOW_PROTOCOL;

  DEBUG_CHANNEL(("Sending %d bytes with flags %d\n", thislength, flags));

  s = sec_init(g_encryption ? SEC_ENCRYPT : 0, thislength + 8);
  out_uint32_le(s, length);
  out_uint32_le(s, flags);
  out_uint8p(s, data, thislength);
  s_mark_end(s);
  sec_send_to_channel(s, g_encryption ? SEC_ENCRYPT : 0, channel->mcs_id);

  data += thislength;
 }




}
