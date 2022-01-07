; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_map_data_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_map_data_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WINED3D_DATA_FLOAT = common dso_local global i32 0, align 4
@WINED3D_DATA_INT = common dso_local global i32 0, align 4
@WINED3D_DATA_UINT = common dso_local global i32 0, align 4
@WINED3D_DATA_OPAQUE = common dso_local global i32 0, align 4
@WINED3D_DATA_RESOURCE = common dso_local global i32 0, align 4
@WINED3D_DATA_SAMPLER = common dso_local global i32 0, align 4
@WINED3D_DATA_UAV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid data type '%c'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @map_data_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_data_type(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %20 [
    i32 102, label %6
    i32 105, label %8
    i32 117, label %10
    i32 79, label %12
    i32 82, label %14
    i32 83, label %16
    i32 85, label %18
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @WINED3D_DATA_FLOAT, align 4
  store i32 %7, i32* %2, align 4
  br label %24

8:                                                ; preds = %1
  %9 = load i32, i32* @WINED3D_DATA_INT, align 4
  store i32 %9, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load i32, i32* @WINED3D_DATA_UINT, align 4
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @WINED3D_DATA_OPAQUE, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load i32, i32* @WINED3D_DATA_RESOURCE, align 4
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @WINED3D_DATA_SAMPLER, align 4
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @WINED3D_DATA_UAV, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i8, i8* %3, align 1
  %22 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 signext %21)
  %23 = load i32, i32* @WINED3D_DATA_FLOAT, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %18, %16, %14, %12, %10, %8, %6
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ERR(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
