; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_map_channel_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_map_channel_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WINED3D_CHANNEL_TYPE_UNORM = common dso_local global i32 0, align 4
@WINED3D_CHANNEL_TYPE_SNORM = common dso_local global i32 0, align 4
@WINED3D_CHANNEL_TYPE_UINT = common dso_local global i32 0, align 4
@WINED3D_CHANNEL_TYPE_SINT = common dso_local global i32 0, align 4
@WINED3D_CHANNEL_TYPE_FLOAT = common dso_local global i32 0, align 4
@WINED3D_CHANNEL_TYPE_DEPTH = common dso_local global i32 0, align 4
@WINED3D_CHANNEL_TYPE_STENCIL = common dso_local global i32 0, align 4
@WINED3D_CHANNEL_TYPE_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid channel type '%c'.\0A\00", align 1
@WINED3D_CHANNEL_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @map_channel_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_channel_type(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %22 [
    i32 117, label %6
    i32 105, label %8
    i32 85, label %10
    i32 73, label %12
    i32 70, label %14
    i32 68, label %16
    i32 83, label %18
    i32 88, label %20
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @WINED3D_CHANNEL_TYPE_UNORM, align 4
  store i32 %7, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @WINED3D_CHANNEL_TYPE_SNORM, align 4
  store i32 %9, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @WINED3D_CHANNEL_TYPE_UINT, align 4
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @WINED3D_CHANNEL_TYPE_SINT, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @WINED3D_CHANNEL_TYPE_FLOAT, align 4
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @WINED3D_CHANNEL_TYPE_DEPTH, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load i32, i32* @WINED3D_CHANNEL_TYPE_STENCIL, align 4
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @WINED3D_CHANNEL_TYPE_UNUSED, align 4
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i8, i8* %3, align 1
  %24 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8 signext %23)
  %25 = load i32, i32* @WINED3D_CHANNEL_TYPE_NONE, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %20, %18, %16, %14, %12, %10, %8, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ERR(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
