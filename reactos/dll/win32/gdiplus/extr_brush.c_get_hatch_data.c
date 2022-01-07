
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpStatus ;
typedef size_t GpHatchStyle ;


 size_t ARRAY_SIZE (char**) ;
 char** HatchBrushes ;
 int NotImplemented ;
 int Ok ;

GpStatus get_hatch_data(GpHatchStyle hatchstyle, const char **result)
{
    if (hatchstyle < ARRAY_SIZE(HatchBrushes))
    {
        *result = HatchBrushes[hatchstyle];
        return Ok;
    }
    else
        return NotImplemented;
}
