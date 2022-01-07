; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_technique_desc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_base_effect_get_technique_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { %struct.d3dx_technique* }
%struct.d3dx_technique = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid argument specified.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx9_base_effect*, i64, %struct.TYPE_3__*)* @d3dx9_base_effect_get_technique_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dx9_base_effect_get_technique_desc(%struct.d3dx9_base_effect* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dx9_base_effect*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.d3dx_technique*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.d3dx_technique* @get_valid_technique(%struct.d3dx9_base_effect* %12, i64 %13)
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %5, align 8
  %17 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %16, i32 0, i32 0
  %18 = load %struct.d3dx_technique*, %struct.d3dx_technique** %17, align 8
  %19 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %18, i64 0
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi %struct.d3dx_technique* [ %14, %11 ], [ %19, %15 ]
  store %struct.d3dx_technique* %21, %struct.d3dx_technique** %8, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %26 = icmp ne %struct.d3dx_technique* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %20
  %28 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %29, i32* %4, align 4
  br label %47

30:                                               ; preds = %24
  %31 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %32 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %37 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %42 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @D3D_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %30, %27
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.d3dx_technique* @get_valid_technique(%struct.d3dx9_base_effect*, i64) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
