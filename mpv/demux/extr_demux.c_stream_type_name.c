
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum stream_type { ____Placeholder_stream_type } stream_type ;






const char *stream_type_name(enum stream_type type)
{
    switch (type) {
    case 128: return "video";
    case 130: return "audio";
    case 129: return "sub";
    default: return "unknown";
    }
}
