
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum stream_type { ____Placeholder_stream_type } stream_type ;






__attribute__((used)) static const char *track_type_name(enum stream_type t)
{
    switch (t) {
    case 128: return "Video";
    case 130: return "Audio";
    case 129: return "Sub";
    }
    return ((void*)0);
}
