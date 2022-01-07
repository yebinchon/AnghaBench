; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_shader_is_scalar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_shader_is_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_register = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WINED3D_IMMCONST_SCALAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader_register*)* @shader_is_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_is_scalar(%struct.wined3d_shader_register* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_shader_register*, align 8
  store %struct.wined3d_shader_register* %0, %struct.wined3d_shader_register** %3, align 8
  %4 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %3, align 8
  %5 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %41 [
    i32 128, label %7
    i32 136, label %19
    i32 135, label %19
    i32 134, label %19
    i32 137, label %19
    i32 132, label %19
    i32 130, label %19
    i32 129, label %19
    i32 131, label %21
    i32 133, label %34
  ]

7:                                                ; preds = %1
  %8 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %7
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %3, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %32 [
    i32 0, label %28
    i32 1, label %30
  ]

28:                                               ; preds = %21
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %21
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %21
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %43

34:                                               ; preds = %1
  %35 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %3, align 8
  %36 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WINED3D_IMMCONST_SCALAR, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %34, %32, %30, %28, %19, %17, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
