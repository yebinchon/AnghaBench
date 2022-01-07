
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreaudio_data {int unit; } ;
typedef enum coreaudio_io_type { ____Placeholder_coreaudio_io_type } coreaudio_io_type ;
typedef int enable_int ;
typedef int UInt32 ;


 int BUS_INPUT ;
 int BUS_OUTPUT ;
 int IO_TYPE_INPUT ;
 int SCOPE_INPUT ;
 int SCOPE_OUTPUT ;
 int kAudioOutputUnitProperty_EnableIO ;
 int set_property (int ,int ,int ,int ,int*,int) ;

__attribute__((used)) static inline bool enable_io(struct coreaudio_data *ca,
        enum coreaudio_io_type type, bool enable)
{
 UInt32 enable_int = enable;
 return set_property(ca->unit, kAudioOutputUnitProperty_EnableIO,
       (type == IO_TYPE_INPUT) ? SCOPE_INPUT
          : SCOPE_OUTPUT,
       (type == IO_TYPE_INPUT) ? BUS_INPUT : BUS_OUTPUT,
       &enable_int, sizeof(enable_int));
}
