; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_valid_technique.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_get_valid_technique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_technique = type { i32 }
%struct.d3dx9_base_effect = type { i32, %struct.d3dx_technique* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d3dx_technique* (%struct.d3dx9_base_effect*, i64)* @get_valid_technique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d3dx_technique* @get_valid_technique(%struct.d3dx9_base_effect* %0, i64 %1) #0 {
  %3 = alloca %struct.d3dx_technique*, align 8
  %4 = alloca %struct.d3dx9_base_effect*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %10 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %15 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %14, i32 0, i32 1
  %16 = load %struct.d3dx_technique*, %struct.d3dx_technique** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %16, i64 %18
  %20 = call i64 @get_technique_handle(%struct.d3dx_technique* %19)
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %25 = getelementptr inbounds %struct.d3dx9_base_effect, %struct.d3dx9_base_effect* %24, i32 0, i32 1
  %26 = load %struct.d3dx_technique*, %struct.d3dx_technique** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %26, i64 %28
  store %struct.d3dx_technique* %29, %struct.d3dx_technique** %3, align 8
  br label %38

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.d3dx_technique* @get_technique_by_name(%struct.d3dx9_base_effect* %35, i64 %36)
  store %struct.d3dx_technique* %37, %struct.d3dx_technique** %3, align 8
  br label %38

38:                                               ; preds = %34, %23
  %39 = load %struct.d3dx_technique*, %struct.d3dx_technique** %3, align 8
  ret %struct.d3dx_technique* %39
}

declare dso_local i64 @get_technique_handle(%struct.d3dx_technique*) #1

declare dso_local %struct.d3dx_technique* @get_technique_by_name(%struct.d3dx9_base_effect*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
