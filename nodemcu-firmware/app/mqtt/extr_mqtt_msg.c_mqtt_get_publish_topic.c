
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



const char* mqtt_get_publish_topic(uint8_t* buffer, uint16_t* buffer_length)
{
  int i;
  int totlen = 0;
  int topiclen;

  for(i = 1; i < *buffer_length; ++i)
  {
    totlen += (buffer[i] & 0x7f) << (7 * (i -1));
    if((buffer[i] & 0x80) == 0)
    {
      ++i;
      break;
    }
  }
  totlen += i;

  if(i + 2 > *buffer_length)
    return ((void*)0);
  topiclen = buffer[i++] << 8;
  topiclen |= buffer[i++];

  if(i + topiclen > *buffer_length)
    return ((void*)0);

  *buffer_length = topiclen;
  return (const char*)(buffer + i);
}
