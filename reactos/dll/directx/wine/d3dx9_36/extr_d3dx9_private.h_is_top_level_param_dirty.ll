; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_d3dx9_private.h_is_top_level_param_dirty.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_d3dx9_private.h_is_top_level_param_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_top_level_parameter = type { i64, %struct.d3dx_shared_data* }
%struct.d3dx_shared_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_top_level_parameter*, i64)* @is_top_level_param_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_top_level_param_dirty(%struct.d3dx_top_level_parameter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3dx_top_level_parameter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.d3dx_shared_data*, align 8
  store %struct.d3dx_top_level_parameter* %0, %struct.d3dx_top_level_parameter** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %4, align 8
  %8 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %7, i32 0, i32 1
  %9 = load %struct.d3dx_shared_data*, %struct.d3dx_shared_data** %8, align 8
  store %struct.d3dx_shared_data* %9, %struct.d3dx_shared_data** %6, align 8
  %10 = icmp ne %struct.d3dx_shared_data* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.d3dx_shared_data*, %struct.d3dx_shared_data** %6, align 8
  %14 = getelementptr inbounds %struct.d3dx_shared_data, %struct.d3dx_shared_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %4, align 8
  %21 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
