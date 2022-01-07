; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_array_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_new_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_type = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.hlsl_type* }

@HLSL_CLASS_ARRAY = common dso_local global i32 0, align 4
@HLSL_TYPE_FLOAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlsl_type* @new_array_type(%struct.hlsl_type* %0, i32 %1) #0 {
  %3 = alloca %struct.hlsl_type*, align 8
  %4 = alloca %struct.hlsl_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hlsl_type*, align 8
  store %struct.hlsl_type* %0, %struct.hlsl_type** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @HLSL_CLASS_ARRAY, align 4
  %8 = load i32, i32* @HLSL_TYPE_FLOAT, align 4
  %9 = call %struct.hlsl_type* @new_hlsl_type(i32* null, i32 %7, i32 %8, i32 1, i32 1)
  store %struct.hlsl_type* %9, %struct.hlsl_type** %6, align 8
  %10 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %11 = icmp ne %struct.hlsl_type* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.hlsl_type* null, %struct.hlsl_type** %3, align 8
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %15 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %18 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %21 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %25 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  %26 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store %struct.hlsl_type* %24, %struct.hlsl_type** %28, align 8
  %29 = load %struct.hlsl_type*, %struct.hlsl_type** %6, align 8
  store %struct.hlsl_type* %29, %struct.hlsl_type** %3, align 8
  br label %30

30:                                               ; preds = %13, %12
  %31 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  ret %struct.hlsl_type* %31
}

declare dso_local %struct.hlsl_type* @new_hlsl_type(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
