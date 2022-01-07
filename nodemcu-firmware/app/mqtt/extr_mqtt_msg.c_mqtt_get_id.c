
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
 int mqtt_get_qos (int*) ;
 int mqtt_get_type (int*) ;

uint16_t mqtt_get_id(uint8_t* buffer, uint16_t buffer_length)
{
  if(buffer_length < 1)
    return 0;

  switch(mqtt_get_type(buffer))
  {
    case 133:
    {
      int i;
      int topiclen;

      if(mqtt_get_qos(buffer) <= 0)
        return 0;

      for(i = 1; i < buffer_length; ++i)
      {
        if((buffer[i] & 0x80) == 0)
        {
          ++i;
          break;
        }
      }

      if(i + 2 > buffer_length)
        return 0;
      topiclen = buffer[i++] << 8;
      topiclen |= buffer[i++];

      if(i + topiclen > buffer_length)
        return 0;
      i += topiclen;

      if(i + 2 > buffer_length)
        return 0;

      return (buffer[i] << 8) | buffer[i + 1];
    }
    case 135:
    case 132:
    case 131:
    case 134:
    case 130:
    case 128:
    case 129:
    {


      if(buffer_length >= 4 && (buffer[1] & 0x80) == 0)
        return (buffer[2] << 8) | buffer[3];
      else
        return 0;
    }

    default:
      return 0;
  }
}
