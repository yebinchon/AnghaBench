
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * astrstri (char*,char*) ;

__attribute__((used)) static inline bool device_is_input(char *device)
{
 return astrstri(device, "soundflower") == ((void*)0) &&
        astrstri(device, "wavtap") == ((void*)0) &&
        astrstri(device, "soundsiphon") == ((void*)0);
}
