
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_type {scalar_t__ type; } ;
typedef int BOOL ;


 scalar_t__ HLSL_CLASS_OBJECT ;

__attribute__((used)) static BOOL convertible_data_type(struct hlsl_type *type)
{
    return type->type != HLSL_CLASS_OBJECT;
}
